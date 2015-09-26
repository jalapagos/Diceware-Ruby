# Diceware-Ruby

Nowadays, passphrases used on daily are not very random but rather are 
based off common sayings or phrases that might be on top of your head. Reality
is that the rate of entropy or randomness for these passphrases is very low.

What is Diceware?
Diceware is a list of 7,776 English words where each word corresponds to a five
digit number with each digit ranging from 1 to 6. Using an actual dice, one will
roll the dice 5 times and combine these rolls together as one number. Using the 
Diceware list, that 5 digit number will correspond to a word. The strength of a 
Diceware password is contingent on the number of words the passphrase contains. 

How to use it?
Simply compile the ruby script : 

ruby Script.rb 

And watch a Diceware password be generated! 

Using the rand ruby module, I was able to emulate a random number as of a dice though
I do believe that using an actual dice will create more entropy due to various factors.