#!/usr/bin/python3
#!/usr/bin/python3

import hashlib

import random
import string
guessAttempts = 0
myPassword = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"
passwordLength = 4
while True:
    guessAttempts = guessAttempts + 1
    passwordGuess = ''.join([random.choice(string.ascii_lowercase)for n in range(passwordLength)])
    print(passwordGuess)
    passHash = hashlib.sha256(passwordGuess.encode("utf-8")).hexdigest()
    print(passHash)
    if passHash == myPassword:
        print("Password guessed successfully!")
        print("It took the computer %s guesses to guess your password." % (guessAttempts))
        break
