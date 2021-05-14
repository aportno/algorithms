import hashlib

userInput = input('Enter phrase: ').encode('utf-8')
m = hashlib.sha256(userInput).hexdigest()
print(f'Hash: {m}')