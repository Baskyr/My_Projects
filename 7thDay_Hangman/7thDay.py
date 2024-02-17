import random
import ASCII_ART
import words

print(ASCII_ART.logo)


#------------step_1--------------------
word_list=["ardvark","baboon","camel"]

# Randomly choose a word from the list above and assign it to chosen_word variable
import random
chosen_word=random.choice(words.word_list)
print(chosen_word)


#check if guess is inside the letters of the choosen word
# for i in chosen_word:
#     if guess==i:
#         print ("you guessed it")
#     else:
#         print("wrong")


#----------------step_2--------------
#create a list called display. For its letter in chosen word add a _ to display.
display=[]
for i in range(0,len(chosen_word)):
    display.append('_')

# replace the _ with the letter in the right possition
# ask the user to guess a letter and assign it to guess variable and make it lowercase.
lives = 7
s=6
end_game=False
guess_list=[]
while not end_game: 
    display_word=""
    guess=input("guess a letter ").lower()
    b=0
    if guess in guess_list:
         print("You already gussed this letter.")
    guess_list.append(guess)
    for i in chosen_word:
        if guess==i:
            display[(b)]=guess
        b+=1
    if guess not in chosen_word:
            print("You guessed the letter "+ guess + ". That is not in the random word. You loose a life.")
            lives-=1
            print(ASCII_ART.stages[s])
            s-=1
    for i in display:
         display_word+=i
    print(display_word)
    if not "_" in display:
        print("You win!")
        end_game=True
    elif lives==0:
        print("You loose.")
        end_game=True
