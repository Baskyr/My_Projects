#function tha allows an input

# def greet(name,location):
#     print("Hello "+name)
# greet("Bill")


#====================Caesar Cipher======================
alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
direction=input("Type 'encode' to encrypt, type 'decode' to decrypt:\n")
text_to_encrypt=input("Type your message:\n").lower()
shift_number=int(input("Type the shift number:\n"))


def encrypt(text,shift,dire):
    cipher_txt=""
#==============CODE FOR CODING============================
    if dire=="encode":
        for letter in text:
            position=alphabet.index(letter)
            new_possition=position+shift
            if new_possition<=25:
                new_letter=alphabet[new_possition]
            elif new_possition>25:
                new_letter=alphabet[new_possition-26]
            cipher_txt+= new_letter
        print("The encoded text is : " + cipher_txt)
#=============CODE FOR DECODING==========================
    elif dire=="decode":
        for letter in text:
            position=alphabet.index(letter)
            new_possition=position-shift
            if new_possition>=0:
                new_letter=alphabet[new_possition]
            elif new_possition<0:
                new_letter=alphabet[new_possition+26]
            cipher_txt+= new_letter
        print("The decoded text is : " + cipher_txt)


# def decrypt(de_text,de_shift):
#     dec_txt=""
#     for letter in de_text:
#         position=alphabet.index(letter)
#         new_possition=position-de_shift
#         if new_possition>=0:
#             new_letter=alphabet[new_possition]
#         elif new_possition<0:
#             new_letter=alphabet[new_possition+26]
#         dec_txt+=new_letter
#     print("The decoded text is: " + dec_txt)


encrypt(text=text_to_encrypt,shift=shift_number,dire=direction)#===========klhsh ths syarthshs
