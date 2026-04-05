# Assignment 5:Text Analysis and Statistics: 
# ● Provide a text containing a lengthy article or essay. 
# ● Create a Python program that reads this file and calculates the following statistics: 
# ○ Total word count 
# ○ Total sentence count 
# ○ Average word length 


paragraph = """The metaverse is an emerging digital realm that is captivating imaginations worldwide. 
In essence, it represents a collective virtual universe where individuals can interact, socialize, 
work, and play within a vast interconnected space. Imagine a sprawling digital landscape, akin 
to a science fiction dream, where people utilize avatars to navigate this immersive environment. 
Within the metaverse, possibilities are seemingly limitless, encompassing everything from virtual 
reality gaming and educational experiences to social gatherings and commerce. 
Key technologies driving the metaverse include augmented reality (AR), virtual reality (VR), 
blockchain, and advanced artificial intelligence (AI). Companies like Facebook's Meta, Roblox, 
and Fortnite's Epic Games are already investing heavily in metaverse development, envisioning 
a future where it becomes an integral part of our daily lives. The metaverse's potential extends 
far beyond entertainment; it could revolutionize remote work, education, and even healthcare, 
offering new ways to connect and collaborate across distances."""

# 1. Total Word Count
words = paragraph.split()
total_words = len(words)
print("Total Words:", total_words)

# 2. Total Sentence Count
sentences = paragraph.split('.')    
total_sentences = len(sentences) - 1  # Subtracting 1 to account for the last empty split
print("Total Sentences:", total_sentences)

# 2. Total Sentence Count (Alternative Method)
sentences = paragraph.split('.')
total_sentences = len([s for s in sentences if s.strip() != ""])
print("Total Sentences:", total_sentences)

# 3. Average Word Length
total_characters = sum(len(word) for word in words)
average_word_length = total_characters / total_words
print("Average Word Length:", average_word_length)

# 3. Average Word Length (Alternative Method)
total_characters = 0
for word in words:
    total_characters += len(word)

average_word_length = total_characters / total_words
print("Average Word Length:", round(average_word_length, 2))