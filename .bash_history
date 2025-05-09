sudo apt update && sudo apt upgrade -y
sudo apt install python3 python3-pip python3-venv -y
pip install --upgrade pip
apt list --upgradable
pip install --upgrade pip
pip install langchain langchain-openai langchain-chroma langchain-community openai chromadb langchain-huggingface sentence-transformers
sudo apt install python3-full python3-venv -y
python3 -m venv venv
pip install --upgrade pip
pip install langchain langchain-openai langchain-chroma langchain-community openai chromadb langchain-huggingface sentence-transformers
source venv/bin/activate
pip install --upgrade pip
pip install langchain langchain-openai langchain-chroma langchain-community openai chromadb langchain-huggingface sentence-transformers
export OPENAI_API_KEY=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
echo "export OPENAI_API_KEY=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" >> ~/.bashrc
source ~/.bashrc
echo -e "LangChain is a framework for building applications powered by large language models.\nIt supports tasks like question answering, chatbots, and summarization.\nRAG (Retrieval-Augmented Generation) combines retrieval with generation to answer questions based on custom documents." > sample.txt
nano rag_qa.py
python3 rag_qa.py
cat rag_qa.py
nano rag_qa.py
python3 rag_qa.py
cat rag_qa.py from langchain_openai import ChatOpenAI
from langchain_huggingface import HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate
import os
# Step 1: Verify OpenAI API key
api_key = os.getenv("OPENAI_API_KEY")
if not api_key:;     raise ValueError("OPENAI_API_KEY environment variable is not set")
# Step 2: Set up the LLM
llm = ChatOpenAI(
)
# Step 3: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)
# Step 4: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)
# Step 5: Set up retriever
retriever = vectorstore.as_retriever()
# Step 6: Define prompt
system_prompt = (
)
prompt = ChatPromptTemplate.from_messages([
])
# Step 7: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)
# Step 8: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})  # Changed "question" to "input"
# Print results
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
nano rag_qa.py
python3 rag_qa.py
nano rag_qa.py
python3 rag_qa.py
nano rag_qa.py
python3 rag_qa.py
nano rag_qa.py
python3 rag_qa.py
nano rag_qa.py
python3 rag_qa.py
source ~/langchain_env/bin/activate
pip install langchain langchain-huggingface langchain-chroma langchain-community chromadb sentence-transformers transformers torch
cat sample.txt
echo -e "It's very nice that I started the class at 5:00 and sat with Vesant and I had a lot of pleasure.
Seeing how she treats is compliments with a certificate, oh it was.
Really it was very lovely here now it also looks like an account everything is excellent everything is excellent and now a request
Permission to speak with you bulls, let me be with sytes with real sytes sinus all over the whole side
The side agreed with her, it took a few days until the two Gatti Eli
To Jerusalem I took the stone of Heaven A sweeper of liquids that you put for cleaning in wheels with buttons
I put it on her after five minutes, yes, mom, what is it, I told her what do you mean, what are genes?
That I brought you so that you can feel that if my pain disappears, I have it here where you died, I put it for her.
Here you will always remember that you have to put it on both sides, oh I had one pair, I had one pair one by one.
I put it on her, Mommy, it passed me, I don't feel pain, I don't feel like it, but it hurts me here
Now admit it here, put it here within a day, there was no trace of Sizzy, excellent, excellent, just so great, you remember
that I also told you about the tyrant that my grandson who was born was also
and really thanks to this from the breeze and thank you for sharing with us my son-in-law I am
I would like to remember that you should always have two pairs because simply the system of the sinuses is
An open system and if you put one side on one side, it is correct but it can move to the other side as it is.
Ran up to her and it's true, it's just flowing in the sinuses, yes Hellps Zollis
Cleaner absorbs all the viscous material all the hocus
Yellow, all the runny nose and all its grades, the Hellps absorb and the line
Marin absorbs the fluids that actually cause this intense pain
who feel that they say that it hurts more than childbirth and toothache is because of
The pressure it really puts on the brain so when you do it symmetrically it helps a lot or here behind me
The lobe yes it's for the whole system if you feel it specifically here so you can put it on overnight
Here on the sinuses A on both sides of the nostrils and there are those who feel it here here I put it
Here I also strike, it puts an amethyst dental amethyst here, and it really helps me why.
To the sine, why, because you will see Amatis, you will remember that among all the wonderful qualities,
Her has the quality of a priceless sola to pass pain
Head: We always say that for headaches we have several levels, what does it tell us about the human being?
That his headache or his sinuses is something very spiritual she is a very spiritual type she is
I take her worries to such a very high place because I know the climb so it is also
It's like that with her and then she is it, it helps her a lot in this section, remember that there are headaches
Amethyst has a lash that is already a type of Optalgin in the liquid
And remember that it can't be on your head for a long time, and there's a dambury, which is a stone that we haven't learned about yet in this lesson.
It's transparent and it's rod-shaped but not like
A generator and she doesn't put it on her head, she puts it on, let's say let's say it hurts, they think where
The center of the pain is placed at this distance from the center of the
The pain and concentrate and pull the pain in that direction
In this direction, yes, no, not for a long time, repeat this operation three or four times, and that's enough.
It is very strong that you can build from it, I go back to the amethyst pilot.
Those whose headache, even if it is very powerful, comes from the spiritual amethyst part very, very
It will help them if we have a student here that we always remind
The same Deborah that she came to the class years ago already and in the first lesson she said sorry all
Time is me, I am you, you are talking and I am attracted and I am afraid of the amethyst
And I told them this stone and I said A, it really helps with headaches, so Yi said, I'm terribly terrible.
I suffer from migraines and when I get a migraine I am disabled for two or three days and she did not take
The pilot and one amethyst a small basket and that's it, and since then she has been saying that my life is divided forever
That I knew the amethyst and after that I no longer lay dead for three days from migraines and so on and so forth.
She is a group of stones, she lives in Bnei Brak, and Rachel brings it every time.
She has what she needs in the stone thing, but the amethyst
She had more than any medication she took for migraine, yes, just remember that it was
Every time after a seizure or after use, every time after use, you will also see
Clean your ears every time after use, but take another pair because it's really in the Dashmia faction.
You helped her with one pair as well
My son-in-law also suffers from malaria so he takes it and changed the color
His yes yes she is very much she is very tyrannical
Teamed with the user, she has no problem, she has no problem taking all the jeep, all the jeep, all the
The entire property and yes she is replacing it
Colors without a problem, really without a problem, I have a question, thank you for dividing.
With us I had to tell it because I was almost myself too, the truth is that I have the
The experience in the boys, but as far as Sino Beatty is concerned, this is the first time
That I gave yes no no no this is doing a few minutes it didn't take it it does
Wonders, thank God, thank God, it really does wonders.
I told them about Deborah, because they talked about the amethyst so much for his village, yes, so it was then.
I told them how she had been until then and since then from her mouth only this week I brought her as well I said yes
To them who once included you, who asked that, okay
They think about where the center of the pain is and because there are those who are here and there are those who are here
Some of them move and just place it on the center
The pain is yes, but it's an experiment, there are those for whom Malek will do the
The work is not like I'm comparing but I compare as if it's
Just like there are people who will only take paracetamol and there are those there will say no no to us
You need Optalgin, yes, I always thought that Matis is like paracetamol
And flogging is like a telegin but it's not true, it's not true, it's terrible, it depends on where it comes from to a person.
And let's say it's atomic pain, she used to lie in bed for three days, but that's the thing.
The one of the amethyst probably cleans all of you too, the whole third eye, really soothing too.
The tax is very pleasant to put it right, right, it's that until it disappears, as if what's going on.
Rule for any rose, you can have a rose, you can come home to take it.
Amethyst Nabi Welsh to lie down in bed and put on a little
Here you know what it is that cripples the third eye, you understand it.
Suddenly you it also gives you more space to accommodate because how much you can accommodate is coming at a moment
Walla too much, so what's here, and ask her, it conveys to her and it's very pleasant to the amethyst.
Nabi is as if she was built to place her on the third eye
His nose, even if it's like this, I'll feed myself in a moment, stick it to your forehead, you'll see.
The question is, by the way, all the vanities that wanted stones and stone screens
I was the Imperial Topaz, listen, the Imperial Topaz could have been with me if Vered hadn't.
She would put me to hard work, pull me in directions.
Others, with God's help, you will get it next week, forgive me, stay with contractions for another week, God forbid.
Celia is true, but what did she put me out of use, Gila, they ask here if you have a cat or a cat.
Small also small without without not embedded is a question about imperial preaching if it helps with compliance
You said that in one of the lobes it was written, "We woke up, it's very much."
It's like I have strong stories about it, but it's not really aesthetic and smells not, but
These stories are not, but let's say one put it on a little boy and I told her to tell him when he died.
So she said to me, I don't know, before I told her, Buena, go quickly, she told me, Buena, all
Death was complete, but one day I gave it to my daughter because she was, she needed it.
to do the Shih Tzu therapist and she had to do someone Shiatsu therapy and she told me
I think I need to make the treatment easier because I can't, I need to empty and I said
Come on, try Topaz Imperial Pooh, I heard her just pecking with laughter in the bathroom.
She said to me, tell me what this thing is, what is it, I asked a multi-purpose legislator.
What is it, but but, but, look, look at my mother, where wait a minute, let's say live.
Lee Hel Hello Hello we do fold the legs take
Count 3: Why do you stick your ears, why don't you have a leaf of Nana and stimulate, why don't you irritate them?
That's how it's true that we don't, so take an imperial, but you can't say
Fifteen minutes, half an hour, a roof, and that's after 17 and an imperial life, sometimes not the problem with the one that needs to be
Seeing that it won't help too much, not really, what can help too much, make up for everything you have, not even fresh, no, it's strong, well, it's strong, but what's like you, you won't do at such an age.
Enema is everything, I am before Tess, after flights, what after a flight that I move from one country to another, I
Can't stipulate, okay, go so take an imperial topaz and everything will be fine enough.
One to two, because it was someone who had a serious problem.
Uh, yes, there are two in the desertion, in this kit there are two
There are no stones now, but there will be no more stones, but they are not yet, she destroyed me, well, no, no.
I could have you had protection yesterday for you too they took me out of use
Please, excuse me, or excuse me, you were here in the last lesson, you didn't think you had a list.
I don't make anything, whoever wants a reactor of reggae in Buena, it's not plenty of days, take it
3 Do not make them constipation, atonement does not say that she is a pardoner, I am not, but I am
I ordered one big one, you bring more than what is written on the list, because I didn't order, no problem.
No problem, everything is good, everything is good, everything is good to come, no she is better.
Boy, Bob, take an essence for relaxation.
Take it to the bar your husband can call me to say thank you to tomorrow morning he doesn't have to wake me up
Today you will not be able to get a phone call from someone who is in trouble to the mountain today
There is no phone today, it's a good app, I won't tell you what
You won't see, I'm telling you, because it really belongs to the story, it's all with stones, roses, don't see her.
That's how a chicken chocolate cakes is a kidney woman, sometimes I
A little bit of her shutdown is too strong for me at my age [Laughter]
The downtrodden is racing forward, but really, really, I'm a poppy.
When I read that I wrote about Dr. Gil to Gabriel the Koch, you are invited to hear that it is impossible you can't
Threading a word is no longer something
Crazy, leave me alone, it's not me, I'm really talking, I'm just telling them, she's really doing a wonderful thing.
Because the Lubavitcher Rebbe said years ago that the Chassid
that he was very, very happy about and would send him on very important errands around the world
He said to him, "Listen, you will find good stones in the entrances to the Kishon."
And Margaliot and you know a lot of people respected the Rebbe, but from here until it takes time
Dig up and stop all your activities in life and go looking for this great distance to this man
That he is truly a great tzaddik, he was lucky that his main chuppah was Vered, blessed are you, sir.
Our God, the King of the world, that everything is in His Word.
Um, because everyone would have given up on their own, no, I'm telling you, really, it's not a matter of giving from everyone's mothers-in-law.
He was discouraged, you dig once or twice, you can't find it, and then you find some starling.
And you're coming, you need strength, you need perseverance, you need faith, you need a lot of knowledge, you need too.
Infect people like she wants it or you don't want it, you want yes, so no, you, it's something you really need.
Very special personality but but they came they came to an amazing place amazing
And as the Rebbe said, they really found good stones and pearls, I am very
Enthusiastic because he was very punctual he never said you will find
Diamonds yes because a lot of people didn't understand it and said they were probably looking for diamonds and they really didn't
They found diamonds, but they found, for example, a stone that is good, what is my thing?
With them because in my education I am a doctor of gemology
And in order to know the value of these stones, you have to examine them to see what materials you have there, what
That's exactly how much it's worth it's lab tests, it's lab tests, now look, I'm
I came out of the closet years ago because I decided that my lamb
With stones, it is to diagnose and heal and relate to the energetic qualities
of the stones so naturally there are other things that have been pushed into a corner in my very history
I really liked the gemological part of the gemological assessments and the stock market, it wasn't the second house
Mine was my first home A and from there my love for gems now they found wonderful things things that you don't find
In other places that were sold in a limited liability oh for example spares everyone knows but they found
What a sapphire that is rare in Israel, only in Israel, only in the world, rare in the world.
I found in Israel in the Kishon where is the Kishon, the Kishon, it's sorry, it's not wrong, it's the best name that begins.
In Jenin, 77kilometers to the estuary into the sea, the beginning in the Haifa Bay is the kindergarten of1022kilometers is in you.
The Kishon is considered one of the largest high streams in Buena, all in all, she wanted to know where the Kishon is.
The shooter Haifa Haifa area Anyone who knows us on the road
70of his in Jat, tell me, I can tell them about one stone or it is forbidden because it is better tomorrow Gila can
To tell you about everything from no no there is not everything not now we are in class but I just want Hamel Sapir
You can talk a yes and no, so for example, explain to your ears what it is called finding
Special stones so we said they didn't find diamonds but they did find stone
Which is more than a diamond, I explain to you what it means more.
From a diamond you will look like not just look like in our diagnosis, maybe you will understand where it comes from.
I am very thankful to Shem for the
The insight he gave me that things need to be accurate because a gemological diagnosis is also necessary
Be precise, and even when you're in the middle of things, every human being is a gemstone, he's a diamond, and when you find
He has things in diagnosing everything, you have to be precise, and if you give him a cocktail, you have to see from which
Stones, you take it and why do you give it to him, let's say two and three now, what is it?
Says a stone is more important or more special than a diamond
To have it full coverage its chemical formula is like a diamond it is
Says it has all the properties of a diamond and another mineral
One, you see, what a huge thing, now they've already found this stone.
In the world, too, she was so special that there was a friend waiting for her and doing it synthetically.
Like there are a lot of good stones that make them synthetic, but they found it in the meantime
In very, very tiny quantities when they found it
first and the largest size does not reach more than 1.5millimeters, which is
Mamaty: In order for people to understand what it is, they thought it was actually the mineral, it was named after Henry Moussen.
A French-Jewish camper who thought he had fallen from the sky in San Diablo Barry, Arizona, and he
Thought that he actually discovered a new meteor you found this size we found in 2009 3.5
Millimeter and Vesek put up a poster together with two world-renowned professors named Gnos and Aristotle
And we called itDiscovery Foundation, and later we found4.1and then I said, like what's sacred?
Baruch he sent3.5and4.1, there is no problem that he will send bigger ones as well and he sent the4.14
In another geological area, the name of it actually shredded the cards completely, because now I have to understand what the source of the pleas is, because as Gilo always says, I mean there is the symptom.
The stones, but what is the source, we in geology trace a fireplace because it was a spill, so it could be
Simply put, the geological story is very simple, Mount Carmel will have14volcanic bodies.
They erupted at some point, some of them so-called, you learned the first lessons, everything related to Kimberly.
In the privacy of the kite, in fact, if it is closed or not closed, some of the bodies erupted, some of the bodies did not erupt at all
Case: Everything is led if it erupted into the nearest oval body that in our case it bit or
In the direction of the Mediterranean Sea, if it is in the area of Bat Shlomo, Paradis Teves, who knows all the volcanic bodies
The goddess, then, affluent, actually didn't invent any wheel, she just went on the basis of the Rebbe's retiring words and pinned it, I like to call it Deppto the sci,science shakes hands with faith in this case.
And in recent years, the discoveries have received a very large amount of publicity, both because of the moss and because of the Carmel.
A sapphire named after Mount Carmel and in fact there is a rare inclusio of titanium aluminum
The zirconium he discovered was able to understand why it was so important to the physical burden of all the elements
The important ones are that it affects the brain, the body, the mind, and these are actually minerals that I wrote at the end
The text that every woman will actually feel the most wow in the world, to feel her, will also feel like she is taking stones.
From the yoke and this is actually the whole story, but in fact this is really what I say, I say no, it is actually not
Me, because it's just no, it's not completely scientific, to know what minerals are in the stones and to know which mineral
Scientifically, what does it do to our body, to our mind, to our spirit, yes, you just have to take the
The things and take the chaff out of the chaff and sum it up is not this it is not this it is not me I invented these stones this name and this
Very scientific, and as she says, as far as I'm concerned, the strong part is that it's Torah and scientific, yes, it's because the passage
This actually shows us that the name is also the invention of science and he invented the minerals and he made the
This connection and me is lovely and exciting, now it's just
Q: That I killed a guy that I get in this whole thing is that I suddenly felt like they were
My age and experience, I can look a little more
From above on the things and for example this musso that they read
If I am right, this is because it has theTSXVersa in the countries
The alliance they actually went and created something that those who are familiar with the industry from Norway are actually not Sizy, not zircon, qubit zircon, it is not actually a synthetic diamond, it is also not a regular diamond, it is something that it will create.
A hybrid is actually glass that is made in a lab and people pay between$250 and $250 for it
For $750per crack you will understand the big stupidity and they make lots and lots of money, the jewelry is amazing
Beautiful and any woman who actually wants to hold a cold dip is not a hurry that no one sees in the loop that it is.
I really don't want to hold this mousse which is actually synthetic from Ceni or as they call it because
The word synthetic is not allowed to be used in the United States because it is a criminal offensecreated by moss then moss
which was produced then what he actually discovered now go on and say that they didn't call it, they called it stone.
I cried it, it was like blood, and I told her that it was really not.
And here I got the greatest courage because I am identified in the world as
There's no place in the world where they don't talk about Moss, whether it's in Kimberly, if it's in other places, and they don't send it to me because I'm actually considered a Verita who has everything to do with it.
In the Moss in the findings of the Moss in writing about the Moss this is not the first article and in fact how can it be
That I actually call it and here I really learned from Merom Gilo to relate to my baby who is a shamus for me from Bambin, how I read it in Kimberly as well.
The big ass is not that with the proper respect and it really doesn't like no you don't say it's real if it's
Your Bibi, so I call it Demand Pass because it's diamond, it's carbon, and it's even more.
From a diamond and if you say like a diamond it's a kind of imitation like that, zircon is also a damn for me and it's just
Zircon but here it's not Damand Pass because it's just an amazing amazing stone with the help of God you will come to us
To touch all the stones, all of them also in rubies, graphs and sapphires, we will show you a picture
After we, with God's help, get through the next few days that we're currently forbidden to talk about, you'll get to see both the presentation and the jewelry that Gilo was actually a partner in
No, not really, no, no, and then you will really see the collection and I want to hear what you are.
They say with it, "Wow, seriously, yes, a discourse for the country, it's not simple, it's now, it's now."
In what kind of continuous hyperactivity do they do today diagnose Lord, not today they do Sherman, you can't have the stones.
Blowing up my wavy houses, but okay, listen, it's actually understandable, it's highlight, it's some point.
of a celebration after years and years of investment, of despair, of a desire to reach some
A place where you don't know if you'll get to something and suddenly it comes out and there's more but
You sometimes people are already going through so many things that they are a
They don't really see what a huge thing they have under their hands and need
To come someone from the outside and comment on it in a positive spotlight and tell them hey it's just rare and amazing, there's really things there
Amazing both this mist and the sapphire which is very, very special
1 Let him give a lot of respect
To Israel to Carmel A Really Lovely A So Okay
We are us
Can't say we accommodate you but we accept you with understanding Girls Highly recommended
Golden Drops Shake We will see how you will be by the end of the lesson so we will know if it is highly recommended or not
In the meantime, we haven't seen the results yet.
You will see that sometimes you also need the whole bottle, sometimes Noga comes in in the morning and more.
On the stairs before she goes up, she says to her, Noga, listen, you have to go out to this and you have a list of
She needs it, she goes upstairs, takes an extract of ADHD, pours it for me, tells me to drink, I
I'll be back in a few minutes so sometimes you need all the
The bottle is not too bad not too bad We will bring you another one Yes we will bring you another A Not too bad Positive A
Now we are a clinic
Well, our patient came with a fierce heart, Yael Yael.
Sherman: Today I decided that she was Yali, Yali, I felt from the diagnosis that she was Yali, so she
She agreed[Music] to me
Yali Yali Yali
Dear What Come A 2 3 See
Now now let's be I've put the stones next to the next one so I can show you if there's any
A stone whose shape is significant or whose size is significant
Okay, now let's make it neat, we've opened it.
Akon, yes, we learned it now, we want to present it.
The patient is right
Who did beauty surgery [Music]
Great, I'm Bash, there's a corner there, stand there, in the corner, you're close, I don't put it.
In a corner I don't put in a corner these years of death
Specifically for those who are in high school, which corner I give a stone, I give a stone and an essence
No punishment only for next week Two diagnoses is all in the best of
Today yes, yes, no, it's worth it, it's worth it, it's really worth it, this Hiali, well, who in a moment, not just before?
Fingers crossed, what I forgot about it in Beit Tamar was not
Last week, but she did just in that I would feel my absence, I think you would have said good.
Dord, I don't ask, or I won't partially ask, what do you really say, well done, really this morning.
I made your father, I loved him, I'll bring him here, bring him, look like you, an amazing pit
Guy guy boy boy amazing boy boy boy is today in dementia this boy yes what is it
Gymnasium Dementia Dementia Dementia Dementia Tomorrow
Yes, that's how I said goodbye to my father, so now we're only with Yali Tov T.
A Let's see who I see that
Nina Listen Listen Even though I've still done it before
that I should have taken from all the larger opinion is still just
According to the decks, wait a minute, what Pnina says.
I explained to her, Pnina told me yesterday that she
I feel that there is always a trace of joy and lesson
The last one had a feeling that she didn't know how to decipher what I was saying and I told her to listen
I see from what you write on the stones that you just look at the pages that came with the stones on the
The pages that come with the stones, what about all the lessons, hey, why am I writing to you about rocket launchers?
In class, she said she thought it would be even more difficult for her if she referred to cruise missiles
to focus on the matter, and I told her to do the opposite.
Yes, you sometimes find exactly the nuances in this expansion
Well, I thought I was going to do this box with the cards right.
Inside, it's true, you can just arrange the material like this, yes I have, I have, after all, if there is, but one that is:
Both in that of the boxes and in the general information of all the material that has been made, you can simply zip it up
The cards are very nice and start messing with doing it, this is it, but it's a lot thick.
I copy the whole of the mountain, in my opinion, in my opinion, it's a work that is very, very instructive.
And what is true is really worth it, and over the years I have seen many students who have done it, and let's say there is.
Here is a former student who comes in the mornings and I really enjoyed saying in the morning in the last class, so there were some of them.
They said what is so long we sat down to diagnose how long it takes and she will say that she is just
She's two years old here, two years old, she came to me after that and she said I didn't make it, no, no.
I did it at home because she doesn't come every time I just did it, tell me what you are.
She says there was something to this patient that she thought I didn't cover, so I told her to say
How long does it take you now to make a diagnosis so she said here I just sat down and did it then
I told her I really want you to tell the students because sometimes they are so
I am discouraged, but it was actually those who made this card that it was easier for them because you will see if you start
Make a paste fix from the computer there is no point you no you don't assimilate you
Doesn't assimilate the whole perspective, the whole wide range of the stone, it's not good to actually take
A small binder with the card sits like a binder box
That's how you don't understand, we called.
On you, yes, all on behalf of the management and the staff, we wanted to say that we miss you.
You are more beautiful than ever, today you are more beautiful than ever, now from the moment boy, where are you?
In the binder, hello, hello, yes, the one who asked is Worley cards.
Dear There is a box with cards in order
Father, every school supplies store has this, here you can write your son's name.
The intentions mark as to protect according to families yes you are with Rach on
The table has a box with our tabs to look inside
The tabs are Hey Bini Bin Bini Bin Bin and you also have this Antur
Okay, Ruby, it's beautiful, and there are also some that divide the yush.
Gravel Gila, I have a question, father, I want to tell you, I read the material on the coral on Saturday, I really enjoyed it, what is the difference between when you write a potion and potion extracts, it's the drinking.
So even though you will apologize to Yahel that she has to wait and has already done so, so I explain to you well, listen
Listen, every patient actually gets this explanation because they want to know why I'm giving them
A potion for an evening extract for the morning Okay this potion is any set of stones of
Drinking every evening is the right potion, a potion
Drinking, drinking now, what is a potion, what is a heavenly potion
Stones like that, all the stones here put it
In a glass with mineral water, cover it and prepare it in the evening and drink it the next evening
And repeats every evening if the patient is with you during the day
On Monday, you say to him, next Monday, liter to tar, what do you drink on Sunday?
There are two more new caps a day
Monday morning you take out with a spoon the
The stones cover the water because this water is already mirvel they have already turned the energetic frequencies of
The stones, so you cover the water, you collect the washing of the stones with tap water.
At room temperature gently intending and then exposing the daylight
Exterior beyond the windshield for 3 hours and then you put it back
For a glass and on the evening on Monday you drink it as usual correct the stones were three hours less
In the water, but they passed pure against each other, what happens if we don't answer the first question anymore then.
This moment is the right potion, so you have to drink a shelf [_ ], and you have to
Drink it every day and once a week purify
This extract is very, very large in water
shallow ones where the minerals also gather in certain stones for a specific purpose, as you can see
In the extracts for confidence and self-love for focus for the right Lampar Ki very large stones that can be inside
The water that can be above the water in the net has two extracts which are the essence of rose gold, there is a palette of
Gold that is not in the water is above water on a net, so there is a gold essence for calm, peace and tranquility
That now that you're drinking a letter you're actually
I get the minerals as well as the
The minerals of the gold in it is also what I asked you if
in the qualities to also talk about the qualities of gold, especially thanks to the interest that these jewelry are
From gold description yes so it is very effective the mineral Gia is very effective and in essence
You will be rewarded with the mitzvot in this very golden essence
Notable is this passage a gold extract also has another gold extract
For pain that we are not the only ones who use
In our gold, it will be with pain-pouring stones, yes, but we are not the only ones who use gold.
This effect against pain in Germany has people
They only extract gold and sell it in pain pharmacies, that is to say, more
Once upon a time, what we talked about earlier, the minerals exist, the question is only if you get to understand how much it is worth getting.
and understand that you don't have to use minerals, only that they come together with chemicals
In conventional medicines, yes, so the extract vs.
The potion is that you get the very, very big masturbators you get found and it's very concentrated
So it is enough for you to take a few drops you don't have to take to drink all[ __ ]
And also there are stones that you can't put in the water because
The composition of the water with metals is not well received there is the composition of you read you had the list
In the last lesson, let's say a rodeo course, two of its minerals don't compound with water.
In a way that is good for us in the body, therefore and accordingly it can never come
Potion B in essence is a different story because we have
Networks and the energetic frequency are obtained
A: Without them actually being in the water, yes, but their effect is very, very strong, and that's how we have a transition.
The extracts also have an extract, for example, for iron, for some people whose body needs iron and they can't.
Receive all the irons that are given
B. Together with chemistry in the HMOs, it makes them constipated, it makes them pain, that's it.
No, part of the line we received says that we used to do some of the boys to cut them off.
Actually, you don't use this method because the rabbis who guided us, let's say today, he is not the rabbi
Nissim Peretz, a scholar of Nissim, his wife studied here for a year
which passed us as a then he would give us would tell my husband exactly how many stones
Lactosh a real people with a crater valley and he would give it to the woman to drink in the water it was
If he had all kinds of combinations to get pregnant to keep all kinds of pregnancy he had, but he was a bit
Very cable and you need I always said I didn't
I'm sure what Rabbi Nissim Peretz's blessings help or the stones he gives, but it's just some combination
Winner Yes A We received a lot of congratulations for this treatment
rabbis, but not in the way of getting in and killing them
only the energetic frequency, and for the sake of this frequency medicine, there is
History is very, very strengthening, yes, first of all in Judaism.
But not only if you re-read the material that you already have today from the first and second lessons.
What Happened in Egypt in Mesopotamia in Ancient Greece
In Rome 1 the sections of the frequencies were very, very strong sections yes so thank God for that yes but
We definitely know that it exists, which means that
That the support for example an extract for improving breathing is not stones that you can give in water you can give
For a person to go with these stones in the chest area with rhodonite and with Rodo Corsai you can't
Put it in water you can make an extract from it the same thing we started talking about say iron
Iron, there are stones that cannot be in the water, such as the dead, yes and right, and in the water it can be
To be honest, easy joy and the development of optimism, we can't put pyrite in water and it's an essence.
Great epitome for this joy, it's just Albi of so many things a gift to the forwarder from really, really
Yes, gold, there are things, yes, it is written for us in the material on the gold, yes it is smooth.
It is not written for us as I mentioned gold here, so I say gold, not permissible, it can be that it is written as a building organ.
It's no, no, no, no, it's coming, it's coming, because we have, yes, no, we have, you have a lesson, you're at all.
You learn about minerals and what minerals do so that you get to see the formula and with an explanation of the formula you remember the
It's in the material the lesson on the minerals you have a table was there gold no I don't remember I was there too
No, if not, I will bring you whoever you want, then I have it, I will divorce you, give it to me, not to me, let's say.
In this book of yes no oh in the book it is of the minerals yes but no name on the gold right yes
It's written there on the gold, but I have the gold from some sources, okay, I think it's from some six.
Seven sources of very, very beautiful things about the qualities of gold, but you will know for a moment, just a moment.
I want to summarize in a moment, in a second, what is this water that you are replacing that is in the gigi of the people?
The minerals are always the same, standing water, no, why is it the water you have in your bottle, yes, but you
I add water all the time, every time we make a new one, that's what I'm asking because you get extracts from it, handcuff the
I use water and then you start again with the same is my question ok yes yes now the
There are people, why is it good that you have both this and that, because there are people?
They have the most fun using stones, and there are people who can't for all kinds of reasons, yes, it's not suitable for them.
On the agenda of the day they don't sleep at home, they have nowhere to purify stones, oh many times they don't tell
And it's not convenient for them to start seeing[ __ ]With stones there is a very large variety of reasons and sometimes you
I really want to give the patient both stones and extracts in order to
that the treatment will be stronger or
Or faster, many times you find yourself wanting to
Give a person a bottle with each
Kinds of extracts that you can filter according to his diagnosis and let him drink it in the morning
And in the afternoon and then in the evening to give him a potion potion, for example, there are people I found myself
No, it doesn't happen to me, I had a lot yesterday morning.
A girl to whom I gave stones on both sides, it almost never happens, it almost never happens, she had
Here is self-confidence and
And she set for love and self-confidence and made a breathtaking story of these four stones
She had a B if you were good kids and didn't ask questions and we would do Yael from start to finish
So I'm going to take down her diagnosis, just for you to see it, and on the other side I gave her stress relief.
And calm down and Dickie don't fall Dickie Bell which is the too much what
You split her because I split her too much because I didn't want her to blame me for having to
Buying a new bra on the left side is bigger and also that you won't start walking like that so beautiful, it's a shame but it's
It doesn't happen much, it's just that it was also financially economical
And I saw that she needs it for a long time, and that way she won't scream other extracts every time.
In short, she came out with extracts here and there.
And in the cup, yes, without inventing stones, you shall forgive stones in two
Sketch obedience yes it doesn't happen much but it seems to be the best thing in this case the strength
In terms of strength and influence, what influences the boys more
A more concentrated lyre is not
I know that you are on both sides of the aisle, what is going on, she has no share, there is no share, there is a change between them and Mrs.
It's right and it's left, what you see is that we always say put it on the left side, yes, it's understandable, but
But in fact, it doesn't matter if you put the opposite tomorrow morning, it doesn't matter to me in general.
It's very square, let's say when I go into a generator exercise, my sofa always stands in the same place.
It always looks the same Always the entrance door is the same
And I also have trauma because I was born left-handed.
And today they don't do it, let's say my son, I left him on my left, and I think I was screwed.
In this section and what else in this section things but no not
Seriously, yes, I think I'm too.
Dyslexic because of this let's say and don't look for errors as a quality I'm correcting it
Before I bring you a but really I will say if you would give me stones as well
On the right side and also on the left side, so in the evening I would take off my bra and put the bag of stones
On the left side of this bra and the one in this bra tomorrow morning it will be in the same place
And I would feel to see the difference between the bags that I won't confuse on the sides, but it's whims, whims.
Very specific to me, maybe there are people who flow and don't have this problem.
The potion with water with stones can be used for years to come, such stones will stir them every time.
Yes, no, no years, no problem, look, there's probably you know, I've been drinking it for two years, he's all about giving up
It's okay in, if he doesn't come and tell you, listen, this stone from Ma'ale Gran got bubbles, got bubbles.
Listen to stones, sometimes I don't know what they're tired of, I don't know they have them too.
Soul, but can I say yes, yes, really, it's not a problem, and if it's been a few days, let's say someone who has a second hand
I forgot to drink, you can drink it, yes, but it's really better
If we don't concentrate, let's be look, I've been believing in the sea for a long time.
Both I am a big believer in the dynamics of what it does, I believe
Very much in the dynamics of what it does when it's day after day after day like look I'm serious
Look, for example, the simulation exercise, you do it, you feel the cumulative effect, you
You feel that it helped from one day to the next, but you also feel the effect
The cumulative after what, after a month, you're in a different place, after two months, it's really doing a job, yes now.
Let's keep our mouths shut and just do a little thing, let's get a pregnant woman having a baby in two weeks.
What shall we say to her now, no, no, do you remember that you asked me to inquire about Shani's book, Toder, yes, that if
Can you make an order if everyone wants so contact me just you have to show it to the girls
She asked how many books do we want so that you can give us a good discount, hold back after God.
She has to give birth in a hurry, so make an account of her as if she is not pregnant.
No, but she does the math first, she did the Habanero calculation.
A: Yes, yes, it's all from the stones, now Yael and No, I'm not disrespectful, thank you for doing it.
But after now I won't know if I remember it but okay I'll remember you
I'll remember you, you can give birth quietly, my atonement is my hail now now Yael now Pnina wants to say
Listen to us, Pnina says good in everything
[Music] Loud what I saw in terms of the
Spiritually and physically, I signified, so Moss also has excellent excellence for improving Dan's relationship
Personally, there are also specific personal blockages in the emotional area.
It's coarse and mezoic soothes and balances the emotion The cheetah skin relieves Iou Chambi conditions
From the emotions of the heart
1 And also a powerful balancer to the heart of the mousse The winepress nurses emotional tortoises The avantin orange Secret woodpecker S Stick
The sun and its reinforcement, all these things on the subject of emotion and of
The heart of all the stones is personal to one of them, it was a camp of passion on this subject that I found and on the physical side at the time.
Mau monsoon has a relaxing activity of the nervous system as strengthening the nervous system
Libra and Botswana Bar strengthens the nervous system This is a lucha I found that the subject of the nerves
The nervous system and the rest is the issue of balance for emotion and reinforcement
The emotion is the subject of the emotion and the emotions of the heart is very, very strong in the
What are muscle connections
In the bones I also want to add a moment
Thank you thank you these are things that we definitely need to take into account the presentation of it in a good way not
We'll talk about how we present it to the patient and how we start the diagnosis.
Surely it was all comments to the point when we say
To the patient to say three stones was for the nervous system
No, no, we don't need to give her the horizon of a nervous patient, because it's really not there, but
As far as we're concerned, it's true, we have to take care of our nerves, yes, calm down, right, right, right, and I've heard intermediate comments here about
About the calcium and the E and the classic Okay yes add the dear bitter I
It's already as if I've phrased it as, so well, I'm just beautiful, beauty, don't be ashamed, I'm not ashamed of her name.
I'm ashamed well, so that's how I am, the first conclusion I saw, according to first of all, is a desire to calm the
The nervous system, just as the stones were added, the Amazon, the pink abson, the monsoon, I saw a lot of desire for peace, tranquility, to calm the soul, okay, and in the stones of
Amethyst Jasper Rups Force Run Force Run Force It's Simple It's Simple
Go in the rain Think what relaxation it is what fun it is to walk
So when everything is so green, even with that smell of wet plants, it just makes you feel relaxed.
And I also went inside with the dampness, yes and also Amazon, also quiet and where I saw
Also the matter of the Amazon media, remember that it's quiet and peaceful, let's say Haran Force, it's the calm.
The one around you that penetrates you and this mesonite is this, remember the
Her help in the balance sheet so that there will be no ups and downs like there are
Yes to us, just as we have the Blue Lys, the Winepress.
Which is in the communication bracket we have the mezze that the back sometimes you started what is here not here but
She's this thing no not quite your nerves are tense so everything makes you go down and up the
You touch it, yes, so it gives you the relaxation in terms of staying
One confusion to stay balanced just right
The mezzo roka with a people
Thin white stripes like capillaries like white ones yes but sometimes
From the beginning, okay, yes, I also saw the issue of communication, okay.
There was also the issue of communication in Monsoon, and the relationship was also Citrin
Orange is the whole theme of
Speaking in front of an audience in cetrine hectrine, yes, you want to say in Aventura hectoon
Anor Cetri Citrin Orange Was Litz Aventurine Orange Aventurine Orange Citrin There Is Cetri Citrin Orange
No, no, you're talking right, what is the terrin, ceterine, there is citrine, but
It's not orange a Ulster ok no so Orange Buterin doesn't have the theme of
The media: No, no, but the one who cleans Maggie, he cleans the right, he cleans the right, he cleans the right.
and Amazon Amazon that he also spoke about the topic of speech and
Expression and stuttering also put something of communication and the light blue echo I also saw
A name the area of the throat is clearer communication more fluent ok ok and another thing I saw
It's a desire for protection, okay, there were a few stones here, the protection that stems from it, I think.
More than the incomprehension of the unknown, there are a few things here: a reminder of the governor of Gaspar Fiksar was
The theme of the Bilati Noda was the pink tzun needed and protected the
Amazonite C There is also the theme of not being alone all the time, not alone, not loneliness, it repeats
Himself in the stones of the foods and the pink radishes, right, Itay, yes, absolutely great, and more.
The point I saw was that there was a lot of need for something here, as if in thought there was a need
Clarity, as if in the thought in the memory, something more intellectual, it seems to me, I saw it in Cassit.
And in a nutshell, okay, uh, noticing as if it were a mountain, you also referred to Jasper Fiksar.
Physically, Gaspar P physically, it is a level of antibodies in the body, correct to increase, yes to increase.
The level of immunity is correct if a person takes a lot of strength for the whole emotional part because soon
We can also express myself because I have not yet heard the cheetah light enter the picture
Here in the defense, the cheetah light is fear, coping with fears, the cheetah light, right, it is written, a rescue from distress.
Distress, despair, anxieties, so it takes a lot of strength from the physical strength and then the person
There was also a reminder of a lot of desire for self-realization.
Self Creativity Fulfillment What Ra Lech Bubla Is First
I'm giving birth, what are you already holding in your belly, I'm probably talking.
A kicking olive, may his name be praised forever, a sweet brother, in short, the letter of Bob.
Shelly Barash, then a friend, I got into it, quiet, a moment, then the desire for self-development, self-realization, creativity.
You see it in Jasper Mookies Beautiful Mook and you put Mokith and there notice that it's at its base yes
What a creative woman, what kind of art is part of her, oh at the base of it
Says it's something that Tammy does and she and she wants more of it and she wants to develop it very much
Lovely in Moi in the polls beautifully she took the mock she took such a creative a really amazing look
You will also see that its shape is very terrible and sharp and it also has such a dark eggplant color and stripes like this eggplant
It's like a painting, something amazing, and yet she has some parts
Small in cities like this, a beautiful cass, just just amazing, but it teaches about creativity, yes, yes it is.
I want a process that yes beautiful beautiful bubble and a desire to develop a fast you are ready for birth you are ready yes something
The last one I saw repeated itself twice the topic of beauty that maybe digestion of the kidneys something in digestion
In the Katzi roast and Jasper Bucky Suri and Citrine are also things about domestication
Came back three times, right, one more time, I'll tell you, a citrine, right, and also the end, hey.
Yellow Kidneys Drink More Drink
More than that, that's my conclusion
It's beautiful here, Osnat wants to express yourself, you want to too.
Idle to be
Q: The interpretation is the same because maybe you don't know which one to which
She goes to the center, so maybe you may have the phrase
Artistic Okay just in the center of the same meaning yes no just say whoever takes it wants
To create from his heart yes and the emotion in him, the emotion in him is very, very strong, you will not see.
I very much want to create from where
She also has parts of the emotion here, but it shows us that she has, she has a real pink one.
A mouth of emotion, but it shows us that she has always always been a part of her.
that you counted on the cardamom stone, oh, it's true that someone took it as a place and then
Put it at the base and then the one says there are problems and Hoor's family
It's worth a stone with the same interpretation, but let's say what it is, let's say I'm the one who called Lily today
Where does he need what I try to do before a person
We put him on the operating table, so the first thing I said to her is good for me to say.
This is after you have already opened the diagnosis and said and seen it
But at the beginning, yes, I said, Buena, happy is your husband sitting for you.
In your head, how do you think of him, right, hey?
Don't say you don't understand what it is, what you just said, it's all about her husband, yes, her husband.
There is only one stone that has been diverted in Yaniv
The relationship is a slap in the face, listen, whoever takes Molson, it means that he has problems in the relationship, tell the woman of the week that the relationship
What problems are not problems that he thinks about his relationship yes he wants me that I have always taken
Always want to improve, want more, always want something different, always if it's in the head, if it's white, where
Yishka I'm not sure where in the first street here but there is the same what is heat for sure
Look, I don't have to, you say, you know, you know what Moonstone is, the man wants it.
If his husband is in his head then it will be white yes you will hear problems
In a relationship, it doesn't sound like the right definition to me, not because we want to soften or minimize or give
Rashi's commentary, but what about upgrading the relationship, what about thinking about how to make him better?
How to Get Into This You Will Hear People in Their Married Life Going Through a Lot
Stages do go through all kinds of stages in life
One is undergoing a change, one is undergoing work, the house had children in it, suddenly there is no one in it.
There are no children in it, suddenly you
The center, yes, I see you teamed up with it, no, but suddenly it's your center, and you're its center.
Buena is an acute change so hey she is also look it is not
It is strange that the woman sits with a people
Walla seria is not of stones in the chest, that is, we see that the window of the world is the emotion
That's right, then and at the same time we see a good head, a head doesn't need much
Catalysts, but she does want to succeed, yes she wants to advance, and she's also a creative woman.
Mukit, yes, we will try, with God's help, to help her so that this great feeling will not be Bukhara, right?
I felt another second that it would be for her because
At the moment, all kinds of things, some of which may also be the monsoon in the head, create some kind of distress because
Otherwise, why would she need the cheetah light and why would she want so much
Tranquility: Yes, it may be a very busy life, it may be dynamic.
A of work she took care of not the children for work yes
When it is when it is continuous, it creates some desire
For Shalva and me, maybe maybe she lacks, maybe she lacks some kind of support, maybe she lacks fasting, yes, here's what I said.
I'll tell you what it is, well, I wrote something about it, here is the working mud and also not the matter of feeling not alone and also
The mezzo nit is talking about the loneliness that I am not
Alone loneliness Mara Alomi what is lonely she wants more I want the sheep to be more to me maybe I need but you felt
As if there is a barrier in the emotion maybe towards me but because her emotion is the moss so then maybe we need some kind of discourse
Maybe we need some kind of foal, maybe we need to open some kind of communication, this is the communication that repeated
Itself is a creditor of the bush OK Okay see Keltzi azure see hey
Wait a minute, come on, maybe we
We need to recalculate the route Yes what do you want, what do I want, what do I lack, what do you lack, how
We meet halfway through, yes, we'll see soon if we're fantasizing or we're there, yes, you thought and yes, no.
Look, you don't have to take it to the extreme when we don't have signs of extremism, yes, I don't see a lack of
I see a connection, no, she wants to improve, yes, yes, right, I see a desire, I see a desire to open
Wanting to plan more, and it's beautiful, it's beautiful that you noticed a moment of time, it's not enough for me, I'm lonely, come on.
Let's see, let's see, I identified with her in this passage, as if I want to be who I am, a partner who for a week
that really went by how did you feel it, the truth that I didn't have
Time to do the surgery so I read it a few times and just felt this place of
A lot of bubbling, but not bubbly, not bubbly, something very blocked, but a lot of desire.
Many, many emotional desires, many as if they were all able to explain themselves as
That you need to have success in the monsoon, both of which are in the head, which success is more, success in a relationship, maybe it's
It's important for success, both boys are in the head, yes, relationships and success, yes, listen, it's part of it.
This is a very important part that can do a because success relationship is that which has succeeded and there is also the coarse factor
which means to bring out sorrow in the shade and also the Persky has a certain heaviness there
Something distressing
That's right, you paint very precisely, what are you looking at, the hole?
This is to you, who is my God?
Yes, yes, so wait a minute, say yes, you agree to do
A short soup break is interesting for us to know what it is
I say Yali, Yali, you agree that we will eat soup and then
Say, cell, see who wants to diagnose a bull
Bring what list, what list, who's in the lottery, lottery, we're Zim to do.
A good lottery, so you've already done a lottery, Orly wants no, here she said, Osan, I'm aiming for you.
It's worth doing it for another week, I'm at the end that you know everything, I want every brother to come out in a minute, wait a minute.
Osnat Beauty Moment
Choose, Listen to Girls
Daughters of Yeli Daughters and Dr. Yaeli
There's a piece of girl who wanted women for her, I'll tell you what stones to put on her
The body wanted to make a diagnosis, except for me, many want
Do it now and immediately how we are the way we finish Yaeli before we read you, read to us on a stone oh okay
But a moment before you hear that you are losing the daughters of Hashem, bless the letter 2 on my side, the daughters will hear you
This is Suji R Suji
No, there's no here, there's no here, but really a doll, no, no, what's suddenly Morag Z, the similar preceding Morgo, I'm
I like but not Sughighite, you will hear a strong stone in really you don't need it, there are stones that I say
It is good for everyone to have one, even if they did not give it in boxes, but it is not necessary
But we do have to know that there is a reason why if a person
A. You know for sure that it is epileptic A. That it is shorts that a person gets.
In the brain that it has a lot of phenomena for everyone else then the stone
This one will help him bastard the short ones in the brain, yes, but she has more.
Very special aspects from some energy center that is correct and it is very strong, you will see later
Rachel has it on the table, it's a precious stone, the smallest 100shekels, the slightly bigger one, 180and
Stones like this are flat 200, 300, 400, but whoever needs it, it's not a function, it's not and that's it.
And you can use the same stone all the time, let's say there are children who have a seizure
epileptic and you don't know if they will get more or not worth the rest of your life to leave them with such a stone
About them, yes, I have such a granddaughter, oh amazing, amazing, Sophia, she was the daughter of Amber
Got the epileptic cape and my son and daughter-in-law thought she was literally dead it was
In the car and literally they saw her convulsing and so on now and in the ambulance and and it was an epileptic seizure now since she a ha
All the time with Sogillite and she didn't get any more yes but a I am I I take it
To God's credit, I don't know if it's the stone or if there are those who really only get it once and don't get more.
Yes, but what do I care if she has it all the time, and to my delight, it's like she really loves it and that's it.
It worries me that she loves it, but she is terribly attracted to this stone, what does it have in the talion every time?
I make something up for her once I bring it to her in a talion once I bring it to a bracelet now she's into a leg bracelet but you know improvisations on the subject but she loves it
Still then she keeps going with it, now this stone has her
Thanks Tanya, they said it was very tasty, the soup
Just be careful not to get fat, no, it doesn't make those who eat fat.
When you see fat, you will see that this stone is
also protects sensitive people from harsh energies from harsh aspects of
life, but this way of protection is what it is from the third eye, yes, protection in the spiritual aspect is also
Keeps feelings of fear and anger away from the third eye once again is that too
Healing for the child for the child inside you The inner child within you has a
There are children who find it very calming when they sleep, I am talking about children who really feel that they have
They live at night when they live in some dream world or as soon as they fall asleep they have some kind of
Nightmarish storms in this section are worth taking the stone to them
It's okay you get it, it's written, I'm just telling you.
In order to honor the cover photo that you receive today and as we said in the summary and we use
In this it prevents short circuits in the brain, short circuits, in epileptic cases, yes
A: I'm just telling you that a case came to me that really what they didn't try on, he was slowly.
He developed it, it was just like some viral clip and he would get it four or five times.
On the day something terrible, terrible and as soon as they put it on him, Mother came.
Shalev came with some friend of hers who does the ovaries and we understood to her
The ones with the pierced ones and she and she made a necklace with knots with a connection between a stone and a stone like
That you thread pearls, for example, and thank God, thank God, I wish I could.
To tell you that he doesn't get it at all, but let's say it came to something like one in a few months, oh nice.
Yes, so it's for everyone in their own thing, it bastardizes the
The matter is yes to knowing what is a measure that is needed
Spreading yes yes to those who need it is very, very important
Important Now let's get back to me Liali
I'm before I give Lieli your permission.
Speaking if I want to summarize
And after you've all said the right things, you'll tell me later if you see
The picture and if it seems appropriate to you
Clear honest to submit it
To the patient yes before we submit the goal of our treatment yes so I
Really after I learned the diagnosis
This I wanted to call it Yali, this was my first conclusion, if I could say Yali Shramle, then I would too.
I say, "But that's really what it seems obvious to me, because you see a soul too much."
A big one who wants to catch
In the heart everything is a and a
Q: How do you see that they messed with me?
Emotion, a lot, a lot of emotion, a burden on the emotion, the energies of the emotion, and at the same time she
Ran away with a good head that you don't need more catalysts, you don't need a counter aid to develop the
The first thought but now the head
Oh, he's busy.
In the nuclear segment B in the nuclear segment of the family A in the segment
The couple in the segment in the immediate family segment A
We can learn that negative A has
A life that she wanted from the beginning
A lot to bring to life, a lot of beauty, a lot of art.
Creation and it is necessary
Finding the sweat trail among the desired
For the found, it must find the golden path between the
who is threatened by my needs
life and all the time she wants she wants to succeed she takes she spends a lot of energy
1 On the Above 5
The emotional part is terrible, terrible
She wants calm and tranquility she is very, very spiritual but also there
She needs relaxation if there is
Things she wants
Explaining to herself there are things she wants to explain to her partner, she has a lot of demands
From her giving power
A needs some kind of criticism of
The boundaries of Mip who wants to explain to herself that we will finish it
VI
And yes and we are a
We see
It is clear that she is in some parasha
Ways it wants changes, it wants more protection
More Companies, More Sharing
It conveys things from the emotion to the head through the communication area and through the
Spirituality in Hope
To realize itself and reach the fleet and reach more places
Maximum good A is this
The physical system of the tree is good, thank you, and what about you, no, no, no.
The Truth, the Truth
that it is clear to us that it spends a lot of energy on the emotional part and it is clear to us that the load
Its and the perseverance in Libya and take care of
For everything they took they demanded theirs see the nervous system that wants to want relaxation that wants
A break that wants some kind of continuous break that wants help
There is no doubt that the great Hagar Fiksar is to raise the level of immunity and give it more
Physical Strength Yes A
The Hesper Mocquette, which sits at the base, wants to go out and move to any center
Energy A and it will pass at the moment, it has to go through barriers
That with God's help we will help her balance, but let's give her permission to speak.
And then we will say what the goals are.
I myself was surprised to see how much it reflects the things that are also not in the consciousness of the
I say that even if I know them, I don't deal with them at certain times in life.
A: I had some kind of shock to see this reflection that I was sitting on it, it's very, very
It works very very right, a barrel this week, all kinds of related experiences due to what I did.
to myself the diagnosis at the initial level that you just really see the hand of God
The connections that the Holy One, blessed be He, is a feather, so one of them is that I just used the moonstone and put
I went with her during the week during the hours I was at home as much as possible and really opened up something in the house
We opened, we opened, we opened a fossil that was not there until today, which was a period when it came.
To really need a need, to upgrade a need
In an examination, as in the case of an exile, you can actually see the person inside the stones, that means even more than the son.
A person himself is a period in life when life changes, children are exiled.
They left the house, they were left in a new situation, which I didn't see that anyone mentioned but I did experience
This is the side of mourning that I saw it in the stones and I also really experience it every year
The consolation is both consolation and also from this map, the matter of vanity is mentioned about a close person, but the amethyst
The amethyst, what is not Tammy, but it is really very much from
A real fire for a year, literally in the month of Adar, that my mother passed away and I really experience the ability to process with it.
separation that he and the very fact that the children went out that they were very, very connected to them and very
I lived with them all these years, the whole system of giving, the relationship with them was very, very intense, and they felt that they
They build the houses and set out on the road in a wonderful connection and everything, but some kind of separation that is olemic
A A something like this about separation A How is the relationship with them now great, the relationship is better
Now that there is really a separation and there is less need to take care of them and take care of the technical things, but it is
Some kind of inner change that I am going through is also some kind of sadness, I think, of separation.
Saying goodbye to something that was important and central in life, all these changes from a computer really became commercial.
It is very, very big, we need vera vero and this Thursday is the last Thursday
On a long day at night, a relative called me and asked if I wanted to come with them for her weight, someone else
For her part, and I was very hesitant, I said yes, on the one hand, yes, but I have such a thing to prepare and I need to.
The end of this thought of walking among the seedlings between the plants, the smell made me so good that I decided
We really got there and it was raining and it was walking in the rain inside the plants and it was really the
The slice I just submitted that from heaven we hoped to go through the experience, so that's also the emotional side of the truth.
Feeling things but also really a side that I saw how things settle in life in a way that the moment you open them when you see the diagnosis it does something I feel that mine is an opening
Another layer of gratitude for the current situation, I did not appreciate the light of the sun
Mine is so blocked and cluttered, it looks no, it was like that, I had a new reflection, but okay, we're developing with it.
In a stranger and what are the worries because it is that there are no worries there is how if the children go out
From the house and from the house to the square in a moment.
I will document that you did not play children, you do not have to pay the debts, but the fact that children came out is really
Welcome, but the big bag left for the rest remains large, the three-a button is such financial worries then.
Why it is not expressed as an economic concern There is no stone of financial concern
Because there is no broken brother, but it is not certain that it is more
It's not just financial, it's what's going on with them, how are they going through today?
Thou shalt do the calculation, the moment of the combination is presumptuous, for the combination of light
The cheetah that helps to get out of distress with two citris Yes, this need to succeed is also a meme that makes it easier
The sun is also from the head, yes, you are it, it is a lot.
More practical for a practical and creative girl like her
The cat she doesn't really wait for it to fall on her from the sky, she does it
Now also pay attention to your question of how you would see if a girl is so emotional
And at the same time, she has a working head, she is here, she has reached some crossroads, it is true that the children have left the
house, but it is very possible that the child who remains
at home and he was used to seeing that a mother was taking care of this child and this child and this child and he really thinks that now
that he alone can actually treat, he should receive the treatment that all the children
They got it and she thinks about it in her head, thinking practically, how did her brother-in-law take care of him?
Sorry, no, I didn't do the Tao in advance on this one, but it's enough, it's quite committed, the reality is yes.
And you wait, what about the caregiver, what about the mother, what kind of fasting she is?
She gets a sign that she has an exclamation point, yes, where will she get strength from, now I didn't understand, she has a child.
At home, only one child who stays at home, she doesn't have a husband
It was only in the yeshiva that he didn't come out yes, but no, I don't think the son is in the yeshiva
There's a problem with it, not that you won't understand, it's not there, if there was some acute problem here, we would
You can see it, but there's some way here, there's a crossroads of things that need to be clarified.
Open them on the table and somehow beautifully
Truly, as we said earlier, recalculating the route, what happens who gives
For whom, how much, why, when, what do you need, I also need
True to give is really to receive, but not only on one side, the other party can also give and feel that he is receiving correctly, so it is
It's if you're thinking about things, if you're not the type to come and throw things on the table.
Which is not the thing yes so you it takes you time it goes through the heart it creates distress you are in loneliness
Who exactly will you talk to about it, it's good that she has him, yes, talk about it with God.
To see who is against whom, why and how much, and then beauty she went with the monsoon can be
I'm just saying that maybe it's worth giving the monsoon to him as well, and then
Changing after a week, maybe it will be another step in this matter, yes, we are now after
Q: We've deployed it and we've heard now, we need goals, why is it hard for her to talk because I'll say
It's not like it's important to find out, I think it's both, it's not whom, but then
What's the problem, so why did she get into trouble?
1 Happy are you to the question, yes, you are not there, no, no, you are not really there, you are not there, because yes.
Yes, sometimes sometimes you will try to assimilate what I say
Even out of respect for the husband and out of you, you lived all the time with some certain type that has virtues, yes.
But he's like that and he gets his own and he sees himself too.
Oh as the centrum, yes, and he's the leader, and he's the one.
You need goose, it looks the most natural in the world, oh I think a lot
Women, what do you see all the boys who chose religion from it's not much at all, there's a lot of doubles it's
Okay, it's not much, no, it's not much, what do you apologize, say
Next to the two were the two who learned a lot of the six things.
To Gila, do something to De, get it, what's not like that?
Gila, you know, there are those whose best treatment is a stone in the head.
Sorting things out, putting things in order now, now look.
Look at what Yafit said, it shows so much that what you see from here you don't see from there, you really bless you, let's say.
She can have something in her heart, she will come and she will tell her husband, come on, hear what you are.
Where did you go now, help me with this and that, and it's wonderful, it's great, but I'm sure we won't say
She laughs because no, no, no, it's not the most natural Tzala in the world, or I'm sure there are women here.
That the mitzvah with what I say is that you should do it first, how can I tell him what is not really
I'm going to beat a bride to do a general rehearsal, a general rehearsal, a general rehearsal and in the end not to say either
Yes, what is true, I am right, and now I will say to him, thank God, thank God, but what is he not?
Idon't really tell you that10 is excellent, but it has nothing to do with the stage at which you are in a relationship.
Sometimes you know the death of life and you only swim like that, it's true, you will also hear, there is a dynamic, people will also listen to people, sometimes they will come in.
To some syndrome of something that happened to them or or a change that happened to them or some kind of war
Internally, they are not so much and they take their partner for granted, yes, but really.
Really she's in a good place, good she's going, I loveyou, you read the WhatsApp
Shelly, oh Lily, I said thank you and I told you how
I was ashamed that such a large building was standing next to my sink, I should have read thank you, thank you.
Lily, what a rabbi, yes, yes, I just didn't have a crazy meeting here last Tuesday.
And she went into the kitchen and I think my songs were never so brilliant she said
Lee What Is This Black She Started Putting Out Iron Lily Lily Station
You don't understand and I was ashamed of what it is, you know I have such an aliyah, see and yes, they don't know who
It's not that she's a student of mine, she's a huge therapist herself, except that she breaks generators by hand
She has a generator, what you did to her, she broke obsidian.
Obsidian is a restraining stone, you understand that it is broken, not only will you understand what I told you about it.
Restraint broke for her, she fell apart, you see that she was vaccinated, yes, the stone was vaccinated, she was vaccinated, she didn't.
She is vaccinated, she is just taking her discount for the next moment, don't worry then.
In short, let's go back to this Yaeli.
You won't see, here she took thanks, she burned with us, she took the moonstone, she went with her for a week, and something.
Let's open yes, so now there will be some kind of discourse, it's not in front of her, some person who isn't.
Good is good, it's worth it, it's probably worth the
The investment is that it invests in him, but he is different, he is in his place, he may also go through all the
This part of the children's transition outside of
Yes, yes, uh, so let's hope.
that during this process she will also be able to tell him what you can do without
Treatment, but as you know, everyone needs treatment from a different place for different things, so
Here's the thing and then I'll see
Hi is the thing everyone takes the
The economic tasks in a different way she has faith is her
She also does not hesitate to work, we see that
Which is exactly how you see that you will see that
What two two, two citrin all the time, all the time, she wants more, she thinks as she thinks.
How to do and also hear all this action and all this
The need for more strength and the need to balance yes so she wants to feel more in the emotional part that she is not
Alone there is someone who appreciates it, who sees it, who sees what she dedicates, yes.
And champagne it on that, well, and what about the physical is there?
Something Yali asks you about the physical burden of digesting the kidneys, yes already a head, yes, so already a head, it's just a head.
The amethyst will point correctly and correctly but yes I derive joint pain from it too
For Dan calcium you have calcium if it has joint crutches if there are joint crutches maybe it's due to
From calcium he did tests
Blood, so don't look, I think it's Nov, oh, our goals will be.
The first thing is to see that the emotion will be for her, it will not be
It is true that there is no need for the light of the cheetah, there is no need for such a name, there is no need for a strong need for protection.
Feeling lonely No you don't have to be in action like this, feel feel
At Full Gas Bental, if we help her with it along the way, the physical squeaks will also improve, because
In the vessels, we will give her a yellow caltzy to clean the solar plexus then.
It will already help the joints, no, no, because I
I want homework to give you a suggestion if you don't
Exactly what we think we want to give
She's okay, I'll make it, Yaeli, I'll I'll offer you what, but in the meantime
In their homework, they will also start suggesting what is good, you can't ask her if the
I prefer stones or extracts or also
It's also true, right, after proposing first, we'll see for ourselves what she says.
Open oh oh great beauty wait a minute but how do we know what about the quantities how do we know
As you will know, you will know that it is impossible to have a cow, you are very advanced.
Nice, I'll try, I'll try before the birth, Monday goes to take two weeks off and comes back to people.
Hold on, I've been with you for two weeks, that's a lot, what are we with you, Tamari, we're with her, listen
Listen, I'm sorry I don't let you get carried away, our patient gave us an introduction to the introduction and before
That we write her stones, she honors us with some stone, so listen to her.
Oh Anvil Domain, I wrote more of this, I'm still writing in English about a lot of your stuff, Mon is a gambler from the stone you gave us a lecture at the beginning.
The encounter was scary, I'm ready to translate a good one, so I'm writing again as if I've become.
To the house model with the songs here, but I'm writing as because I'm the one who sat down with me, so I'm writing that I'm
I need a stone and there are stones that dress me on this journey every time she won and let go of a stone and move on to the stone
Otherwise, then now I'm with this stone, we're alive, so you'll know that it will say yes.
Really it's not me, it's our Osnat, she's a virtual student, she was supposed to.
Learning by remote control and she comes to one lesson on the way and just
You are us, yes, it's just her.
fell into your net, so it will be said to your credit, it is interesting what it was and the soup
And pies t okay so I called this song by the way I wrote it on Friday while cooking I always wanted
And I write another line and repeat it's like it's a song of Friday night, it's interesting how the food came out, not something
The song is better, in my opinion, a friend who sings that has hair in your heart, and they
Relax your soul, find yourself a little peace, if this is your beloved stone, hold on to your heart and forget your pain, fast.
Your eyes are soft, releasing a barrage of regret and hostility, imagine all the waves of the sea and the turquoise blue.
And the green is also possible to really have a chill yes no bitterness is possible for it to energize and satisfy you
Strengths This way you will cope even in difficult times, and if your intuition desires your soul, attach it to
Your forehead and let the visions revive your spirit, connect to the feminine energy in it and its contribution to you will be a sacrifice
Positive energy in your home is noble and relationships it will save, embrace it to you, it's time
Express your feelings and out of the silence you will find someone to express the oppressive and they are pleasant and when you arrive at the delivery room with her you will feel less work
Your pain is a calming mouth for your body, thank her for
Her work is a good friend to you Ricola
Rizko The second time I sent you a beautiful Akat K beauty I type Ethel Tevet Mehm Tov
No, you will get it in the next lesson, it is printed, and do not listen, it seems to me to be the stone.
Mine really didn't buy damp
Seriously, we had [applause], a student who was in the mud for coffee, how are you?
Oh okay, she's this Pazit, she's her, she wrote about Kalko, and that's it, and we called her Kalko.
Pazit has been there ever since, but there is one who wrote something about pyrite
I read it too, in which she growls very much, not like Doman, writes from me.
There's a piece of jewelry here, I have the one with a stone, I write, there's a piece of jewelry, there's a piece of jewelry, how much money did he say you owe
It's not enough, you opened it for me, I don't remember what it was, tell me.
Why do you need jewelry if it's so good in such a good bra?
In such a good birth in the lower abdomen after giving birth, why do you need jewelry, not really something else, I
I'm in favor of jewelry, well, there is no jewelry from her, no, I usually don't.
20 Say, what is better to set in silver, oh listen, a woman is a law, and gold is also a law, this is a silver hook.
Chesed now, let's say someone who has studied other therapies here knows that they always say before treatment
Take off all the gold jewelry, let's say silver, you can stay with it because
Grace now transfers energy on its face in gold, it is dominant, its energy is stronger.
from the energy of the stones, so if you renovate with gold and gold
Open either it's in the teeth or it's it's open down then the energy
Flow or is it very dominant stones very high on the hardness scale
Their energy will be stronger than the energy of gold, but when we do
Proper health jewelry, it will be for money, because it is kindness, yes, but who said that this is a judgment in return?
A woman, this is a well-known, listen to a woman.
The man was made from the dirt, and the woman was made from the rib, she was
Strong, hey, the man is not the man, he is not broken, he becomes a woman, why does the man court the woman, he is looking for
His rib is completely yes now oh oh this is it now you will see
Just to end this explanation, a woman A gold A what is gold, let's say when you buy
Jewelry You Buy Jewelry 14 Karet Yes Karatura in Gold It's Not Like
Diamonds in diamonds that say Keret is weight, and the word Keret is actually the kernels of the
The carob that everyone wasall about 0.2and then there was no weight so they would put seeds
of carob vs. diamond and that's how they would consider it so it's
It remains as a weight in gold, which only in Hebrew is written the same thing in English, it's a word.
Otherwise, it's bass and it's back, recognition of gold is an adjective.
The material is pure gold it's 24Keret now you can't usually make jewelry on 24Keret because it's soft
Very and by the way, when it's soft, the energy flies inside, yes, so when you renovate.
On the 24th,it almost doesn't happen, it's rare, so
The energy mixes with the energy of the 24th and it only intensifies the energy, it creates some kind of
Crazy synergy, yes, now what happens, for example, on the 14th, in every country there is a rule, what is called gold, yes, let's say.
In the same way, yes, let's say in Switzerland, you can't put a jewelry in 14 karet, it doesn't count.
For them, gold, if it is a little less than 18, it doesn't go in, it doesn't pass for them, what does it mean if the gold is gold?
The pure is 24 and here in Israel it is 14 keret, it means that from 144 to 24 another 10 parts of the whole is
Another alloy, if you want the gold to be white, you can make white metals, noble metals like silver.
Titanium palladium depends on what you want to get yes if you want
To get red gold, as there is in many countries, the Chinese only love gold.
Red then and they go18drugs between 18 and 24more copper
An alloy that will give the red effect when B is 14 is
Sharp it stops the energy of the stones, they cannot pass it unless they make an opening for it
They make his teeth, they make a way for the energy of the stones
Flow You have received an answer and you are all welcome to see our collection of jewelry that everyone
Produced in2cold it's very rare it's very, very 24only it's very expensive that too
Handmade it's I it's very rare it's very rare it's 3000times stamped at the same spot with a hammer
In order to achieve the hardness of we will show you that it is not
Sell Now Let's Extract the Treatment for Tamar I wanted to give Tamar Hof today
She came, she came, until you came, you gave her a little vitality, but she came, very shy, not really.
She came very, very energetic and I didn't think we should get into her today
Lakish, what is not seen by you, she doesn't have so much
Breira Bubble, but no, no, really, you know, there is.
Moments when you're a Z Inf A you can't be right all the time and start telling her what's going on
on her head as if she doesn't know so sometimes you can take it but hey you too
It's you have to take the exam considerate yes so it's today she's on leave to give birth to her just before she moves
We'd like to pop up, okay, I'm not moving the question, but if it's if it's tidy, it took yes, yes, yes, it's uh.
It's nose, wow, what a beautiful stone, yo yo what?
this
Yo, what is this stone, this is a cetri, come on, wait a minute, this is a citrin, a cetri, here you see this.
It's Citrin and that's what I brought a transparent bill as a gift I'm what the Baladi is doing for a moment.
I didn't know
43 43 Experiment Plus Feel
Revive children sea ok my big h I have a question there was no stone here that I love very much and if
There was a place I would choose and even two of them, maybe the question is whether it can be included in the list, yes.
Lapis lazuli uh okay like she came back to me in the solar plexus there and I know she needs to
To be there, what is the lottery for the little ones, is also on the solar keyboard.
Lag m hi also as if she was when she was blue
Very blue royale like that, so they also told me that you can put her in college, the sun doesn't curse
The sun is in the third eye Sorry the third Selly Latti Akan the third you even wrote that the stripe is for me yes
I know it's the third eye, I'm in because of the strain, I'm still in the shelter, so I'll go.
I didn't get my intuition, no, no, no, you don't want me to take it off.
To Pa Lapais that you will have no wrong, if you will come to Lapais thank you thank you thank me then I think
That you can take a picture of it looks good to me, Tabby the Laps does well, okay then.
Write down, write down who is taking pictures with Helps, she will take pictures for a moment, so we
You need a page, wait a minute, whoever is missing a page, tell me, take out the pages, yes, I will bring you a
Minute 5 you want a page T r Allow details of the content as you have before that
Not a bomb, everything is a second, everything is a moshav in the north
The Point: What
The crown of blood is a thorn, a thorn is an end, so behold, you will put me
Lapais Shiloh another one wants two no no no wrong don't go up it's okay I don't want two I said
Just she was, she said she would like to take even two, I know you wanted to.
It's so late with the gold, it's like okay, not since it's not fast, it's already that I'm going to see it, it's oceanic, but
I see it as all full, full.
Beautiful, you know, yes.
Box yes there is gold inside full for the bit so the Ra is smoked wrong so it is
Like it's true but not enough to go down and apathetic
A really big bit is appointed to me and Citrine is the most beautiful I've ever seen.
In a world where I didn't know it was Citrine, but Rachel also told me in her head yes because she's all white and she has
What kind of stain that is a cetrine that is a citrine according to my
Rachel then she has a third eye on the fence and she wants to appease
Zolis and throat have
La Aventurine Blue Yes This Is The Celestite Celestite True
Stunning Celestite and Celestine Two Stones Yes and One But Lottery on the Fence Between the Eye
The third is between the throat and the third eye now
In her heart she has two crazy
Coke, what does it mean to us that it's between the throat and the third, as if about the interpretation, forgive me, what is there again, but another small one, because I was looking for a big one and there was no one.
So as if it's rhodo collapsing yes it's the same meaning two small and rodo corsity touch throat r
As if only this lottery is embraced
The mezu is an aventurine
Parnite is Anur ah and more Amazonite
From a distance, it looks as if you have agave to R.
Q: Two [music] Amazonian has a difference in their color says something like that I
You thought second in your heart, yes, but one of them is really on the border with the throat.
Right then Reg B Zor Two Cries Coke Two Cries Coke Two Cries Coke Rodo Corsica Two Amazon Yes That One
Sitting on the fence between the heart and the throat of the Aventurine Green yes and the fruit is right it is yes okay braids
Sun Keltzi Honey Keltzi Honey Keltzi Yellow Honey True And But Quite Light And Citrine
Quite dark and in the Karlian navel the size of
An elephant and at the base of a mokit
Crazy Crazy
Bring me a plastic bag
Now your votes go in No No No Problem
Av 15 Stones, your consideration goes from lesson to lesson
And everything decreases, accounting for girls, similarly, I took the poem Printed, I want me.
I want someone to get up, please.
And tell us we had a patient come
To the clinic how we explain to her what we explain to her
What do we do, why can I settle, yes, I want to.
Listen, our talented patient explains to herself
Why listen, listen because you're going to say it.
Many times what the patient explains
For Herself Cooking 3:7 31
Listen, the first thing I do is show the patient the page.
The first one we got with the solar plexus with the sorry with all the energy centers A I open it
And I'm going to have to find him, do it really like a prison, we're what not, I'm going to show you, it's a page.
The body aspect of the various energy centers that we are uh our body is made up of seven energy centers
Energy center is characterized by a color dominant color that the color of the component of the
The same energetic center that when we come to choose the boys, we use it as it were.
In our rationale is our need and we are attracted to some color and our brain provides us with some kind of
I will close rationally why we are and why we are attracted to stones, but in fact, wait a minute, wait a minute, you agree with me.
Fix in the body Removal Yes Sure, Okay, our body is made up of energy centers
If there are those who shine a light on this place for you and say hey chakras, say yes, that's right, it's a chakra.
A word in Sanskrit that is the ancient language whose meaning is
A spiral because basically every energy center has energy that the center receives and emits
And the frequency in each center is different.
A is his wave after the spiral is different, yes, but that's if you ask
Basically, you're saying that there are seven energy centers, each of which has its own roles, ours
What is missing and the brain barrier
Our brains will receive this transmission
In color, color is the brain's interpretation of missing a barrier
The name of his begonias It is in a parenthetical article, the name in his pride made the brain
This section of missing and barrier is very, very clear, the frequencies of these deer are so
Strong it is back, it is stronger than you, ostensibly you choose what comes out of your eyes as our brain is
Manipulative you go to the stones so your brain says to you oh it reminds me of the dress I love this
transparent and I like the transparency but it's a manipulation of the brain on top
The thing about this strong oboe that wants to take that is why we
Take a moment, it's not that it's not true, what you said is just like that.
It is very clear to the patient what to tell him is rational and there is also
This is the most accurate thing, because these are really the signs
The obvious that the brain gets every scientist explains it the same yes it's not that it's esoteric in
In our world, yes, now you say to him, that's why you choose.
Keep going, you've pretty much encircled everything, no, no, we haven't reached the half, because now what is it?
The stones, so the stones themselves are made up of the same minerals that we have in a beautiful body, each mineral is transmitted.
to us in a certain color that absorbs it and as soon as we have some kind of deficiency or barrier in one of the chakras or
In one of the energy centers we are our body, the brain perceives this deficiency and this barrier and makes us want
To take this stone is true that sometimes we can excuse it with rational explanations of
It reminds me of the need or the desire for me, but it really shows our need of need or lack of
We are in the body, so I can use my discussion on the stones when I arrange them on the tablecloth.
According to the colors I can see the map of your body-mind photography and know exactly what
What are the gaps and what barriers do you have and how and what do you need to take care of them Okay wait a minute, I'll do it again.
Doing Royd we have explained up to the point of why I choose the right one because my brain
It receives a message in the color of a barrier or of kindness, and what are these stones, as you said?
And it's true that beyond all their virtues, they are gemological stones, they are made of the same minerals as ours.
There is a good body to mention some minerals to explain to a person iron you have a magnesium stone
You have magnesium and calcium each mineral colors the stone with its own color
Now we will close the circle, you choose according to the color that is marked for you here, which is due to a lack or the color barrier
Stone is one of your minerals What do you choose in a mineral chooses the minerals that you personally need to
Balance correctly so you choose, you bring it to the table, I arrange it according to the energy centers and I
Receives a color x-ray, body and soul that
You can see it together with me, it's not that if now the patient came and told us a story now.
We will do some improvisation of his story according to the stones he chose, not every stone is accurate
Here you come with Yali's diagnosis, we all sang in the same key Sol, we all said.
It's the same because there are no inventions, there are no feelings, it's great that you feel, but actually we
We need to check, it's very, very responsible, what each and every stone tells us, yes, I, I don't.
I stop thanking the Holy One, blessed be He, every time after patients come to me as if I can't
Calm down from this part A today I started saying it to Osnat because hey
I came before the class with some diagnosis of her student of her patient, but I didn't have
Here I had a couple here, uh, actually, he called me and he told me the mussels.
and he told me that he wanted a diagnosis for his wife, he didn't know if he wanted to either, because
He wavered on the edge of skepticism, she was a light bulb, she needed
For help but stones as if they recommended him but he didn't know so he said maybe maybe she will do
And I really encouraged him that only she would do it, I said wait a minute, she will do it and you'll see how it starts.
Act and then decide when she comes a second time, with the help of God, maybe do a generator exercise so you
Do it like this, we left it, she came
A: Maybe I'll lengthen you to download the e, I'll tell you it's on your table, yes, but I'll tell you.
How do you see these are two diagnoses that are connected, what are matched, matched, oh right, because I said
Why, yes, I told her that yesterday, so look at it, she chose to see goodbye, thank you very much.
Bye-bye, she took stones, and I admit and confess that she didn't.
I could, I always open the diagnosis, the same thing, we learn from what a person takes and what he is.
I don't take yes and sometimes you can't say Liali first thing
I wanted to tell her what fun it is for her husband that he is in her head, but Shani also calls her Yali, but let's say the wife.
It's horrible that she's
Took three roteau courses
Big and two rhodonites are also not very small now Rodo Corsica and Rudo Niat is an improvement
My breathing, and not enough for one, two or three are not enough for her.
Now the first thing I said to her, tell her what about your lungs, so she did this and she told me.
It's all in English, they are new immigrants from the United States, live in Beit Shemesh, in short, she says.
I went to a doctor and he told me that I have pneumonia.
Be then, and then she
She I tell her, tell her, she took Avalon, you all know, yes, two Avalon, the most.
I had a pink green name in my heart and I told her what was going on with my mother
Yours is Avalon, what is the connection?
For can improve important
Tap No
A beautiful father expressed to us
It's in short
She started crying, she said.
My mother gave me
And she only brought me back at the age of six and to this day she keeps asking me for forgiveness and I forgave her
I don't understand why she keeps saying sorry to me, but she really didn't forgive her, maybe she
I want to forgive her, but it's in her head, but not in her heart, it sits so tightly for her.
Yes now I went on and showed her the fact that it was a diagnosis that for her it reflected so much that she had all the
What she feels is that she laughed and cried and laughed and cried and then she said to me please
Please do a lot, you will also receive my husband because I was told that it was a rangan x-ray, but I don't.
I imagined that it was so much and every time I went to Plate A to show her some stone then she
She said to me, "Throw me that word as well," as if she wanted to understand exactly, and she said to me, "I don't."
I understand how it could be how it shows so much what is happening to me and how I am
Feeling and then she went downstairs and she said to her husband please please do also
He said to me, "Tell me, if you are doing a discount for a couple, you are doing a discount."
Yes, because we have only gone up to the land, and so on, and so on, I said to him, "Surely yes."
Yes, then and also and his diagnosis as if you are suddenly you
See how
The name is it, it's really crazy, crazy, how people do, how does the name do to them?
Finding each other's commandments.
And also a story, actually.
We didn't really see the father, but yes, as if there was also a beginning in the
Jeep, you see, the child is already born, he needs so much.
power and already he wants to look at the world from the outside, where is the hawk, you know where the hawk is above.
Yes, he is not him, if he just looked out of the egg, he
Will sue then and and a lot of distress a lot of your stone declared
This is yes a
And really lucky that they have each other
And they have love, but you see how you reflect to people themselves and how much it makes them feel good
And how much it encourages them
A: I thought of adding this to your lessons, but I was
I have to tell you here and now how much it is that you are doing online as if at that moment or you are
You too will not do it in a moment, it will only take you time, but how many of them will come to me?
It's happening very quickly, you see, at first, my students.
Oh, asking for a break, another meeting, yes and blue, brother, at first, they probably don't take money for the stones on
The extracts are about the but at first you will feel like you are doing Stash This is what I did Yes A and you
You learn from the students, so at first you wonder and you make a facilitation and you say, "Oh, let's set up another meeting."
And I'll analyze the diagnosis, I'll get back to you and I'll tell you, but it's not a long time, so wait a minute.
He comes to me, he chooses the stones, and I tell him, well, now I have to operate on it myself.
And then come to me and I'll tell you right, right, great silver stones, where I'm going to get him, they're not.
So next time you already prepare the stones for him, extracts that you want to say that the bricks
You mourn but you take on the stones, you buy a stone in a sack, you sell it to him for1sack.
You buy a kit with the price written on it, you pay half right, so you have to come to buy it, not to
Worry, I'll bring you to the stores, Stone Standards, and now when you buy here, if you buy
Here you pay the price, you double the price, but for the diagnosis at the beginning.
Buy very quickly, you'll start because I have students from last year.
Deborah or how long has she been studying Rinat how long she may not have been
Halacha no, no, no, I think for two years, six three, three years, they already charge money from people, not even
After also I have Ptolemy, which must have been the first one, it is actually short.
Only to receive an explanation and take the stones, and this is what comes to you in the first meeting, you say, "You can do them."
Shani Katat tells him about the stones, so you can give the stones, look, see sometimes.
The help to the patient is so dramatic: Yesterday morning a girl gave me tea
Q: She came as a sister to her sister, it was very, very helpful, and she started
To tell her sister that I am in terrible distress, I am already six months after giving birth and I still feel distressed, she just wears it
It turns out to her sister that it's much deeper than that, but her sister said to her, "Listen, it helped me a lot."
I had to pass exams, she is at Bar Ilan A, and it helped me terribly, I was very stressed, no.
I was able to concentrate for the exams and I came to him, he brought a terrible help to me, she came yesterday.
In the morning, it turns out that her stress is not because of the birth, she is her husband, what kind of child
It's pampered that because he's a bit of a heart patient, they just told her about it after the wedding, so his parents let
He had it all with a spoonful of gold and also for him to be silent and he was not before before it was terrible
And it's not him, as if he came to the wedding, he saw that there were things he had to do or he went in.
He just got depressed, I don't think it's his fault, no, he just wasn't educated.
A genius with heart disease and hold him in some good cellophane paper
She found herself in a diagnosis, and she looked very, very unhappy to me.
In fact, she bought some cat in Sk A, I think it was terrible, very winked at her that I don't understand the
This thing that she's Sephardic and some Ashkenazi wanted her destroys me, I don't understand this thing
Wait a minute, so what if he's Ashkenazi, hey, look what they sold you, well, it doesn't matter, but
She's her, she's just on the floor, now today she called me and she
She said to me, you know, it helps me a lot, I told her that.
It scares me, I don't like to hear after a day that a person feels that it helps him terribly, what, what?
She said to me, "No, I'm yours, really, I'm the one I took."
The solution gave me the strength to get up in the morning and she also took her baby a Gadtz amber necklace on the one hand.
What you were glad was that yes, yes, and she says that at first she was scared, I gave her the necklace, I told her that you
Tell me, she can't stand anything about the order, she said, I don't understand, she stayed on the order, I don't understand, I don't understand how it can be, so she says that the baby has it too.
And she also felt chess, but it's not just the stones, it's also the person who gets his client.
And speaking to him it has a very positive effect so it's exactly both the stones and your stuff
Together, that's what improved the situation, it's not R, I hope not, that's what I wanted to tell you, that this time too.
The first one sometimes you sometimes talk to the patient Listen I have one that was with me yesterday afternoon That's it I'm sending you
I don't know, I wish I could help him, I wish I didn't know, I don't know, no miracle happened there, he didn't call me, he stopped drinking, in short, a 31-year-old man came, he came with his father and some cousin.
They entered room three of me, I went outside and said, "Ari, keep an eye on me."
Oh, I say to them, well, let's listen, and then you'll come down, and I'll stay with him, uh.
The father seemed to me
From a classic hole, my cousin seemed like a man to me.
It's good to take care of the family and the child is a son
31 I fell in love with him, wait, I fell in love with him, in short, I say and I tell me, I can tell
Go here, what I want Tzuk to say, but he didn't speak out loud
That's how I said to him, yes, yes, come on, I'll explain to them that we're doing a diagnosis here, how it is, and they're
They went downstairs, they went downstairs, there's no problem dealing with them, I told them to drink and it's good.
He stays with me, soul, I tell him who you screamed about, he says about everyone, he doesn't have a voice, he doesn't have a voice.
All you said to him was that you stink of alcohol, I drink all the time, he was stinking
What is it from alcohol, oh, I drink all the time, I told him, I don't know, I'm dying.
To help you now he tells me that he created such chemistry he is he I explained to him about the diagnosis
I saw straight away, a smart person understands, he took stones, I just looked like that.
I realized that even if he goes to rehab now, it won't help, he's full, full, full, he has nowhere to put
Rehab or something he doesn't have where he doesn't have now, he tells me my father is clean
Now I was born into a family of addicts
By the time I realized that the mother had also died of an overdose
He tells me that he starts to poop, he says she was in prison, I didn't ask why she was.
In prison I would come to her twice a week to bring her money once and once a visit yes then
I was a worker, I had a café, I opened two more branches like this
Just shouting and he says to me, I have opened two more branches.
And I, I took care of her, I took care of her, I brought her money.
On the day she was discharged, she took overdose and died six years ago, it is very difficult for him to overcome
This is the only son A he would have worked well in short he is
He fell for everything, so he doesn't work, his business doesn't work, what not, what not.
He sold the business, he bought an apartment, he has a mind, he has a yes
He has a brain, he has money now, I don't know, I felt that the help according to the diagnosis that he needs to be cleaned before he has
He has a place to put in detoxification so he says and help animals help people I
I see an old man on the street who doesn't have it, I give him some money, I buy him
Drink, I'm I, I love animals very much, today I reached out to Noga, maybe you'll find me
What kind of hole in animal cruelty I am not telling you if you know which animal healing animals have
Healing there is liability horses p.m. puppies there are full I don't know I decided that I know Retorno
Needs to get what but he can't now Guy he can't now Nocturno I had I had
Patients in Nocturno Also in Nocturno You Need You Need You Commit You Need He No He Doesn't
He's not there, he's not there, he's he, he's just mad at me in an instant.
that I showed him that I thought it was stupid on my part to have a bottle written on it
withdrawal and I think it was very stupid because he agreed to take the cocktail he asked
I explained to him what was inside, he understood me to overcome traumas, on top of everything.
These things he ate yes yes and then I said to him I want to give you mental flexibility and
And weaning, weaning, in this passage, he said hello to me and didn't
Goodbye he went downstairs nervous, I saw that he was holding back, which is also something because when he came in he asked
Permission to shout and it was and he literally sat with me quietly and in the part he told me about his mother he cried
Wah Zoe and today today I called him to tell him I'm looking for a job for you, I want you to have
The goal is to clean up so that in two or three weeks you will know that you have a job somewhere.
And I tried to take the cocktail fleet of yes, but the detox, no, he didn't take it, I don't think it is.
It was stupid on my part because I saw that it doesn't have a place that but it doesn't have a place for yes yes but Bam no there wasn't
I didn't have room for a cocktail because I wanted so much
To put things for his soul, I wish I could come with them.
You see people what is good, the just a great man, a great man, just a great person.
Great telling me to run away Nora I tried to figure out what he wanted from
He also doesn't want to be told that he needs to quit, he doesn't want to be told
No, she said that he had gone through all the possible genia hap institutes, he was already
These places don't help the soul
Nocturno won't take him now, that's the problem, I have connections there.
But from Or Yehuda, good evening, peace, peace, and yes, you will come to me in a dream.

" > sample.txt
nano sample.txt
cat > rag_qa.py << 'EOF'
from langchain_huggingface import HuggingFacePipeline, HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate

# Step 1: Set up the local LLM
llm = HuggingFacePipeline.from_model_id(
    model_id="mistralai/Mixtral-8x7B-Instruct-v0.1",
    task="text-generation",
    pipeline_kwargs={"max_new_tokens": 150, "top_p": 0.9, "temperature": 0.7},
    device_map="auto"  # Automatically use GPU if available
)

# Step 2: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 3: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 4: Set up retriever
retriever = vectorstore.as_retriever()

# Step 5: Define prompt
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

# Step 6: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 7: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})

# Print results
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
EOF

python rag_qa.py
pip install huggingface_hub
huggingface-cli login
git config --global credential.helper store
python3 rag_qa.py
huggingface-cli whoami
cat > rag_qa.py << 'EOF'
from langchain_huggingface import HuggingFacePipeline, HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate

# Step 1: Set up the local LLM
llm = HuggingFacePipeline.from_model_id(
    model_id="mistralai/Mistral-7B-Instruct-v0.2",
    task="text-generation",
    pipeline_kwargs={"max_new_tokens": 150, "top_p": 0.9, "temperature": 0.7},
    device_map="auto"  # Use GPU if available
)

# Step 2: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 3: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 4: Set up retriever
retriever = vectorstore.as_retriever()

# Step 5: Define prompt
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

# Step 6: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 7: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})

# Print results
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
EOF

python3 rag_qa.py
cat rag_qa.py
source ~/langchain_env/bin/activate
pip install langchain langchain-huggingface langchain-chroma langchain-community chromadb sentence-transformers transformers torch accelerate huggingface_hub
cat > rag_qa.py << 'EOF'from langchain_huggingface import HuggingFacePipeline, HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate

# Step 1: Set up the local LLM
llm = HuggingFacePipeline.from_model_id(
    model_id="meta-llama/Llama-2-7b-chat-hf",
    task="text-generation",
    pipeline_kwargs={"max_new_tokens": 150, "top_p": 0.9, "temperature": 0.7},
    device_map="auto"  # Use GPU if available
)

# Step 2: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 3: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 4: Set up retriever
retriever = vectorstore.as_retriever()

# Step 5: Define prompt
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

# Step 6: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 7: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})

# Print results
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
EOF



cat > rag_qa.py << 'EOF'from langchain_huggingface import HuggingFacePipeline, HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate

# Step 1: Set up the local LLM
llm = HuggingFacePipeline.from_model_id(
    model_id="meta-llama/Llama-2-7b-chat-hf",
    task="text-generation",
    pipeline_kwargs={"max_new_tokens": 150, "top_p": 0.9, "temperature": 0.7},
    device_map="auto"  # Use GPU if available
)

# Step 2: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 3: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 4: Set up retriever
retriever = vectorstore.as_retriever()

# Step 5: Define prompt
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

# Step 6: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 7: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})

# Print results
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
EOF



nano python3 rag_qa.py
python3 rag_qa.py
cat > rag_qa.py << 'EOF'
from langchain_huggingface import HuggingFacePipeline, HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate

# Step 1: Set up the local LLM
llm = HuggingFacePipeline.from_model_id(
    model_id="mistralai/Mistral-7B-Instruct-v0.2",
    task="text-generation",
    pipeline_kwargs={"max_new_tokens": 150, "top_p": 0.9, "temperature": 0.7},
    device_map="auto"  # Use GPU if available
)

# Step 2: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 3: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 4: Set up retriever
retriever = vectorstore.as_retriever()

# Step 5: Define prompt
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

# Step 6: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 7: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})

# Print results
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
EOF

python3 rag_qa.py
cat > rag_qa.py << 'EOF'
from transformers import pipeline
from langchain_huggingface import HuggingFacePipeline, HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
from transformers.utils.logging import set_verbosity_error

# Suppress transformer logs
set_verbosity_error()

# Step 1: Set up summarization pipeline
summarization_pipeline = pipeline("summarization", model="facebook/bart-large-cnn", device=0)
summarizer = HuggingFacePipeline(pipeline=summarization_pipeline)

# Step 2: Set up text generation (RAG) pipeline
llm = HuggingFacePipeline.from_model_id(
    model_id="mistralai/Mistral-7B-Instruct-v0.2",
    task="text-generation",
    pipeline_kwargs={"max_new_tokens": 150, "top_p": 0.9, "temperature": 0.7},
    device_map="auto"  # Use GPU if available
)

# Step 3: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 4: Summarize the document
doc_text = " ".join([doc.page_content for doc in docs])
summary_template = PromptTemplate.from_template("Summarize the following text in a short way:\n\n{text}")
summary_chain = summary_template | summarizer
summary = summary_chain.invoke({"text": doc_text})

# Step 5: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 6: Set up retriever
retriever = vectorstore.as_retriever()

# Step 7: Define RAG prompt
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

# Step 8: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 9: Print summary
print("\n🔹 **Document Summary:**")
print(summary)

# Step 10: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})

# Print results
print("\n🔹 **RAG Answer:**")
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
EOF

python3 rag_qa.py
cat rag_qa.py
cat > rag_qa.py << 'EOF'
from transformers import pipeline
from langchain_huggingface import HuggingFacePipeline, HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
from transformers.utils.logging import set_verbosity_error

# Suppress transformer logs
set_verbosity_error()

# Step 1: Set up summarization pipeline
summarization_pipeline = pipeline("summarization", model="facebook/bart-large-cnn", device=0)
summarizer = HuggingFacePipeline(pipeline=summarization_pipeline)

# Step 2: Set up text generation (RAG) pipeline
llm = HuggingFacePipeline.from_model_id(
    model_id="google/flan-t5-large",
    task="text-generation",
    pipeline_kwargs={"max_new_tokens": 150, "top_p": 0.9, "temperature": 0.7},
    device_map="auto"  # Use GPU if available
)

# Step 3: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 4: Summarize the document
doc_text = " ".join([doc.page_content for doc in docs])
summary_template = PromptTemplate.from_template("Summarize the following text in a short way:\n\n{text}")
summary_chain = summary_template | summarizer
summary = summary_chain.invoke({"text": doc_text})

# Step 5: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 6: Set up retriever
retriever = vectorstore.as_retriever()

# Step 7: Define RAG prompt
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

# Step 8: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 9: Print summary
print("\n🔹 **Document Summary:**")
print(summary)

# Step 10: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})

# Print results
print("\n🔹 **RAG Answer:**")
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
EOF

python3 rag_qa.py
cat rag_qa.py
cat > rag_qa.py << 'EOF'
from transformers import pipeline
from langchain_huggingface import HuggingFacePipeline, HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
from transformers.utils.logging import set_verbosity_error

# Suppress transformer logs
set_verbosity_error()

# Step 1: Set up summarization pipeline
summarization_pipeline = pipeline("summarization", model="facebook/bart-large-cnn", device=0)
summarizer = HuggingFacePipeline(pipeline=summarization_pipeline)

# Step 2: Set up text generation (RAG) pipeline
t5_pipeline = pipeline("text2text-generation", model="google/flan-t5-large", device=0)
llm = HuggingFacePipeline(pipeline=t5_pipeline)

# Step 3: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 4: Summarize the document
doc_text = " ".join([doc.page_content for doc in docs])
summary_template = PromptTemplate.from_template("Summarize the following text in a short way:\n\n{text}")
summary_chain = summary_template | summarizer
summary = summary_chain.invoke({"text": doc_text})

# Step 5: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 6: Set up retriever
retriever = vectorstore.as_retriever()

# Step 7: Define RAG prompt
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

# Step 8: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 9: Print summary
print("\n🔹 **Document Summary:**")
print(summary)

# Step 10: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})

# Print results
print("\n🔹 **RAG Answer:**")
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
EOF

python3 rag_qa.py
cat > rag_qa.py << 'EOF'
from transformers import pipeline
from langchain_huggingface import HuggingFacePipeline, HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
from transformers.utils.logging import set_verbosity_error

# Suppress transformer logs
set_verbosity_error()

# Step 1: Set up summarization pipeline with truncation
summarization_pipeline = pipeline(
    "summarization",
    model="facebook/bart-large-cnn",
    device=0,
    max_length=1024,
    truncation=True
)
summarizer = HuggingFacePipeline(pipeline=summarization_pipeline)

# Step 2: Set up text generation (RAG) pipeline
t5_pipeline = pipeline("text2text-generation", model="google/flan-t5-large", device=0)
llm = HuggingFacePipeline(pipeline=t5_pipeline)

# Step 3: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 4: Summarize the document
doc_text = " ".join([doc.page_content for doc in docs])
summary_template = PromptTemplate.from_template("Summarize the following text in a short way:\n\n{text}")
summary_chain = summary_template | summarizer
summary = summary_chain.invoke({"text": doc_text})

# Step 5: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 6: Set up retriever
retriever = vectorstore.as_retriever()

# Step 7: Define RAG prompt
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

# Step 8: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 9: Print summary
print("\n🔹 **Document Summary:**")
print(summary)

# Step 10: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})

# Print results
print("\n🔹 **RAG Answer:**")
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
EOF

python3 rag_qa.py
source ~/langchain_env/bin/activate
pip install langchain langchain-huggingface langchain-chroma langchain-community chromadb sentence-transformers transformers torch accelerate huggingface_hub
cat > rag_qa.py << 'EOF'
from transformers import pipeline
from langchain_huggingface import HuggingFacePipeline, HuggingFaceEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
from transformers.utils.logging import set_verbosity_error

# Suppress transformer logs
set_verbosity_error()

# Step 1: Set up summarization pipeline with T5
summarization_pipeline = pipeline(
    "text2text-generation",
    model="t5-small",
    device=0,
    max_length=512,
    truncation=True
)
summarizer = HuggingFacePipeline(pipeline=summarization_pipeline)

# Step 2: Set up text generation (RAG) pipeline
t5_pipeline = pipeline("text2text-generation", model="google/flan-t5-large", device=0)
llm = HuggingFacePipeline(pipeline=t5_pipeline)

# Step 3: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 4: Summarize the document with input validation
doc_text = " ".join([doc.page_content for doc in docs])
if len(doc_text) > 500:  # Truncate to avoid tokenization issues
    doc_text = doc_text[:500]
summary_template = PromptTemplate.from_template("Summarize the following text in a short way:\n\n{text}")
summary_chain = summary_template | summarizer
summary = summary_chain.invoke({"text": doc_text})

# Step 5: Create vector store with embeddings
embeddings = HuggingFaceEmbeddings(model_name="sentence-transformers/all-MiniLM-L6-v2")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 6: Set up retriever
retriever = vectorstore.as_retriever()

# Step 7: Define RAG prompt
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

# Step 8: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 9: Print summary
print("\n🔹 **Document Summary:**")
print(summary)

# Step 10: Ask a question
question = "What is RAG in LangChain?"
response = rag_chain.invoke({"input": question})

# Print results
print("\n🔹 **RAG Answer:**")
print("Answer:", response["answer"])
print("Context used:", [doc.page_content for doc in response["context"]])
EOF

python3 rag_qa.py
cat > rag_qa.py << 'EOF'
from langchain_community.llms import Ollama
from langchain_community.embeddings import OllamaEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate

# Step 1: Set up Ollama LLM with Gemma 9B model
llm = Ollama(model="gemma:9b")

# Step 2: Load and split text
loader = TextLoader("sample.txt")  # Ensure sample.txt exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# Step 3: Summarize the document using the LLM directly
doc_text = " ".join([doc.page_content for doc in docs])
if len(doc_text) > 500:
    doc_text = doc_text[:500]

summary_prompt = PromptTemplate.from_template(
    "Summarize the following text briefly:\n\n{text}"
)
summary_chain = summary_prompt | llm
summary = summary_chain.invoke({"text": doc_text})

# Step 4: Create vector store with Ollama embeddings
embeddings = OllamaEmbeddings(model="gemma:9b")
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

# Step 5: Set up retriever
retriever = vectorstore.as_retriever()

# Step 6: Define RAG prompt
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

# Step 7: Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# Step 8: Print summary
print("\n🔹 **Document Summary:**")
print(summary)

# Step 9: Ask a question
question = input("\nEnter your question: ")
response = rag_chain.invoke({"input": question})

# Print results
print("\n🔹 **RAG Answer:**")
print("Answer:", response.get("answer", "No answer found."))
context_docs = response.get("context") or response.get("documents") or []
if context_docs:
    print("\nContext used:")
    for idx, doc in enumerate(context_docs, 1):
        print(f"{idx}. {doc.page_content}\n")
else:
    print("\nNo context documents found.")
EOF

python3 rag_qa.py
curl -fsSL https://ollama.com/install.sh | sh
ollama serve &
ollama pull gemma:9b
lsof -i :11434
sudo kill $(lsof -t -i :11434)
ollama serve &
ps aux | grep ollama
curl http://127.0.0.1:11434/api/tags
ollama list
ollama pull gemma:2b
ollama pull llama2:13b
ollama pull mistral:7b
cat > rag_qa.py << 'EOF'
from langchain_ollama import Ollama
from langchain_ollama.embeddings import OllamaEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
import subprocess

# 🟢 Configuration
MODEL_NAME = "gemma:2b"  # Change to "llama2:13b" or "mistral:7b" if preferred

# 🟢 Verify if the model is available
def is_model_available(model_name):
    result = subprocess.run(["ollama", "list"], capture_output=True, text=True)
    return model_name.split(":")[0] in result.stdout

if not is_model_available(MODEL_NAME):
    print(f"Model '{MODEL_NAME}' is not available. Pulling it now...")
    pull_result = subprocess.run(["ollama", "pull", MODEL_NAME], capture_output=True, text=True)
    if pull_result.returncode != 0:
        print(f"Failed to pull model '{MODEL_NAME}'. Please pull it manually.")
        exit(1)

# 🟢 Initialize LLM and Embeddings
llm = Ollama(model=MODEL_NAME)
embeddings = OllamaEmbeddings(model=MODEL_NAME)

# 🟢 Load and split documents
loader = TextLoader("sample.txt")  # Ensure 'sample.txt' exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# 🟢 Summarize the document
doc_text = " ".join([doc.page_content for doc in docs])[:500]
summary_prompt = PromptTemplate.from_template(
    "Summarize the following text briefly:\n\n{text}"
)
summary_chain = summary_prompt | llm
summary = summary_chain.invoke({"text": doc_text})

# 🟢 Create vector store and retriever
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)
retriever = vectorstore.as_retriever()

# 🟢 Define RAG prompt
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

# 🟢 Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# 🟢 Print document summary
print("\n🔹 **Document Summary:**")
print(summary)

# 🟢 Interactive Question Loop
while True:
    question = input("\n💬 Ask a question (or type 'exit' to quit): ")
    if question.lower() in ["exit", "quit"]:
        break

    try:
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
EOF

python3 rag_qa.py
pip install -U langchain-ollama
pip install -U langchain
python3 rag_qa.py
cat > rag_qa.py << 'EOF'
from langchain_ollama import OllamaLLM
from langchain_ollama.embeddings import OllamaEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
import subprocess

# 🟢 Configuration
MODEL_NAME = "gemma:2b"  # Change this if you want a different model

# 🟢 Verify if the model is available
def is_model_available(model_name):
    result = subprocess.run(["ollama", "list"], capture_output=True, text=True)
    return model_name.split(":")[0] in result.stdout

if not is_model_available(MODEL_NAME):
    print(f"Model '{MODEL_NAME}' is not available. Pulling it now...")
    pull_result = subprocess.run(["ollama", "pull", MODEL_NAME], capture_output=True, text=True)
    if pull_result.returncode != 0:
        print(f"Failed to pull model '{MODEL_NAME}'. Please pull it manually.")
        exit(1)

# 🟢 Initialize LLM and Embeddings
llm = OllamaLLM(model=MODEL_NAME)
embeddings = OllamaEmbeddings(model=MODEL_NAME)

# 🟢 Load and split documents
loader = TextLoader("sample.txt")  # Ensure 'sample.txt' exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# 🟢 Summarize the document
doc_text = " ".join([doc.page_content for doc in docs])[:500]
summary_prompt = PromptTemplate.from_template(
    "Summarize the following text briefly:\n\n{text}"
)
summary_chain = summary_prompt | llm
summary = summary_chain.invoke({"text": doc_text})

# 🟢 Create vector store and retriever
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)
retriever = vectorstore.as_retriever()

# 🟢 Define RAG prompt
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

# 🟢 Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# 🟢 Print document summary
print("\n🔹 **Document Summary:**")
print(summary)

# 🟢 Interactive Question Loop
while True:
    question = input("\n💬 Ask a question (or type 'exit' to quit): ")
    if question.lower() in ["exit", "quit"]:
        break

    try:
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
EOF

python3 rag_qa.py
cat > rag_qa.py << 'EOF'
from langchain_ollama import OllamaLLM
from langchain_ollama.embeddings import OllamaEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
import subprocess

# 🟢 Configuration
MODEL_NAME = "gemma:2b"  # Change this if you want a different model

# 🟢 Verify if the model is available
def is_model_available(model_name):
    result = subprocess.run(["ollama", "list"], capture_output=True, text=True)
    return model_name.split(":")[0] in result.stdout

if not is_model_available(MODEL_NAME):
    print(f"Model '{MODEL_NAME}' is not available. Pulling it now...")
    pull_result = subprocess.run(["ollama", "pull", MODEL_NAME], capture_output=True, text=True)
    if pull_result.returncode != 0:
        print(f"Failed to pull model '{MODEL_NAME}'. Please pull it manually.")
        exit(1)

# 🟢 Initialize LLM and Embeddings
llm = OllamaLLM(model=MODEL_NAME)
embeddings = OllamaEmbeddings(model=MODEL_NAME)

# 🟢 Load and split documents
loader = TextLoader("sample.txt")  # Ensure 'sample.txt' exists
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

# 🟢 Summarize the document
doc_text = " ".join([doc.page_content for doc in docs])[:500]
summary_prompt = PromptTemplate.from_template(
    "Summarize the following text briefly:\n\n{text}"
)
summary_chain = summary_prompt | llm
summary = summary_chain.invoke({"text": doc_text})

# 🟢 Create vector store and retriever
vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)
retriever = vectorstore.as_retriever()

# 🟢 Define RAG prompt
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

# 🟢 Create RAG chain
qa_chain = create_stuff_documents_chain(llm, prompt)
rag_chain = create_retrieval_chain(retriever, qa_chain)

# 🟢 Print document summary
print("\n🔹 **Document Summary:**")
print(summary)

# 🟢 Interactive Question Loop
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
EOF

python3 rag_qa.py
EMBEDDING_MODEL = "nomic-embed-text"
cat > rag_qa.py << 'EOF'
from langchain_ollama import OllamaLLM
from langchain_ollama.embeddings import OllamaEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
import subprocess

MODEL_NAME = "mistral:7b"  # Using Mistral for both LLM and embeddings

def ensure_model(model_name):
    result = subprocess.run(["ollama", "list"], capture_output=True, text=True)
    if model_name.split(":")[0] not in result.stdout:
        print(f"Model '{model_name}' not found. Pulling now...")
        pull_result = subprocess.run(["ollama", "pull", model_name], capture_output=True, text=True)
        if pull_result.returncode != 0:
            print(f"❌ Failed to pull model '{model_name}'. Exiting.")
            exit(1)

ensure_model(MODEL_NAME)

print("🔧 Initializing LLM and Embeddings...")
llm = OllamaLLM(model=MODEL_NAME)
embeddings = OllamaEmbeddings(model=MODEL_NAME)

print("🔧 Loading and splitting documents...")
loader = TextLoader("sample.txt")
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

print("🔧 Summarizing document...")
doc_text = " ".join([doc.page_content for doc in docs])[:500]
summary_prompt = PromptTemplate.from_template("Summarize the following text briefly:\n\n{text}")
summary_chain = summary_prompt | llm
summary = summary_chain.invoke({"text": doc_text})

print("🔧 Creating vector store...")
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

print("\n🔹 **Document Summary:**")
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
EOF

python3 rag_qa.py
ollama pull nomic-embed-text
EMBEDDING_MODEL = "nomic-embed-text"
embeddings = OllamaEmbeddings(model=EMBEDDING_MODEL)
cat > rag_qa.py << 'EOF'
from langchain_ollama import OllamaLLM
from langchain_ollama.embeddings import OllamaEmbeddings
from langchain_chroma import Chroma
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import TextLoader
from langchain.chains import create_retrieval_chain
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain_core.prompts import ChatPromptTemplate, PromptTemplate
import subprocess

# 🟢 Models Configuration
LLM_MODEL = "mistral:7b"              # Used for answering questions and summarization
EMBEDDING_MODEL = "nomic-embed-text"  # Dedicated fast model for embeddings

# 🟢 Ensure models are downloaded
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

print("🔧 Initializing LLM and Embeddings...")
llm = OllamaLLM(model=LLM_MODEL)
embeddings = OllamaEmbeddings(model=EMBEDDING_MODEL)

print("🔧 Loading and splitting documents...")
loader = TextLoader("sample.txt")  # Ensure 'sample.txt' exists in the current directory
docs = loader.load()
text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=100)
splits = text_splitter.split_documents(docs)

print("🔧 Summarizing document...")
doc_text = " ".join([doc.page_content for doc in docs])[:500]
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

print("\n🔹 **Document Summary:**")
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
EOF

python3 rag_qa.py
cat > rag_qa.py << 'EOF'
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
EOF

python3 rag_qa.py
git add rag_qa.py
git commit -m "Add RAG QA script"
git push
git init
git add rag_qa.py
git commit -m "Add RAG QA script"
git push
git config --global user.email "w.v.seminsky@gmail.com"
git push
git remote add origin <remote_url>
git remote add origin https://github.com/Wadim-cloud/Ragqa
git push origin master
git branch -M main
git push origin main
git push -u origin main
git status
git add rag_qa.py
git commit -m "Add RAG QA script"
git push
git push --set-upstream origin main -m
git push --set-upstream origin main
git config --global credential.helper 'cache'
git push --set-upstream origin main
git remote set-url origin https://YOUR-TOKEN@github.com/Wadim-cloud/Ragqa.git
git push --set-upstream origin main
git remote set-url origin https://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@github.com/Wadim-cloud/Ragqa.git
git push --set-upstream origin main
git status
