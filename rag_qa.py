from langchain_ollama import OllamaLLM
from langchain_ollama.embeddings import OllamaEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain_core.documents import Document
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
import subprocess

# 🟢 Models Configuration
LLM_MODEL = "mistral:7b"              # Used for answering questions and summarization
EMBEDDING_MODEL = "nomic-embed-text"  # Dedicated fast model for embeddings

def ensure_model(model_name):
    result = subprocess.run(["ollama", "list"], capture_output=True, text=True)
    if model_name.split(":")[0] not in result.stdout:
        print(f"Model '{model_name}' not found. Pulling now...")
        pull_result = subprocess.run(["ollama", "pull", model_name], capture_output=True, text=True)
        if pull_result.returncode != 0:
            print(f"❌ Failed to pull model '{model_name}'. Exiting.")
            exit(1)

ensure_model(LLM_MODEL)
ensure_model(EMBEDDING_MODEL)

print("\n📥 Enter your text blocks (type 'DONE' on a new line to finish):")
user_texts = []
while True:
    text_input = input("> ")
    if text_input.strip().lower() == "done":
        break
    user_texts.append(text_input)

if not user_texts:
    print("⚠️  No input provided. Exiting.")
    exit(0)

docs = [Document(page_content="\n".join(user_texts))]

print("🔧 Initializing LLM and Embeddings...")
llm = OllamaLLM(model=LLM_MODEL)
embeddings = OllamaEmbeddings(model=EMBEDDING_MODEL)

print("🔧 Calculating chunk size based on input length...")
total_length = sum(len(doc.page_content) for doc in docs)
if total_length > 10000:
    chunk_size = 4000
elif total_length > 5000:
    chunk_size = 2000
else:
    chunk_size = 1000

text_splitter = RecursiveCharacterTextSplitter(chunk_size=chunk_size, chunk_overlap=int(chunk_size * 0.1))
splits = text_splitter.split_documents(docs)
print(f"🔧 Using chunk size: {chunk_size}")

print("🔧 Summarizing input...")
doc_text = " ".join([doc.page_content for doc in docs])
summary_prompt = PromptTemplate.from_template("Summarize the following text briefly:\n\n{text}")
summary_chain = summary_prompt | llm
summary = summary_chain.invoke({"text": doc_text})

print("🔧 Creating vector store with embeddings...")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)
retriever = vectorstore.as_retriever()

print("🔧 Setting up RAG chain...")
system_prompt = (
    "You are an assistant for question-answering tasks. "
    "Use the provided context to answer the question. "
    "If you don't know the answer, say so. "
    "Keep answers concise."
)
prompt = ChatPromptTemplate.from_messages([
    ("system", system_prompt),
    ("human", "Context: {context}\nQuestion: {input}")
])
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

print("\n🔹 **Summary of Provided Text:**")
print(summary)
print("\n💬 You can now start asking questions! Type 'exit' to quit.\n")

while True:
    question = input("❓ Your question: ").strip()
    if question.lower() in ["exit", "quit"]:
        print("👋 Exiting. Goodbye!")
        break
    if not question:
        print("⚠️  Please enter a question or type 'exit' to quit.")
        continue
    try:
        print("🔧 Running RAG chain inference...")
        response = rag_chain.invoke({"input": question})
        print("\n🔹 **RAG Answer:**")
        print("Answer:", response.get("answer", "No answer found."))
        context_docs = response.get("context") or response.get("documents") or []
        if context_docs:
            print("\n📚 Context used:")
            for idx, doc in enumerate(context_docs, 1):
                print(f"{idx}. {doc.page_content}\n")
        else:
            print("\n📚 No context documents found.")
    except Exception as e:
        print(f"\n❌ Error: {e}")
