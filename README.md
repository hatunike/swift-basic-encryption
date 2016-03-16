# swift-basic-encryption
An exercise in writing encryption from the ground up in swift.

Starting with the basics and working my way up.

Current Roadmap
 
 BigInteger
    Addition
    Subtraction
    Multiplication
    Division
    Modulus
    isPrimeNumber

 RSA
    PrivateKey
    PublicKey
    Encryption
    Decryption

Communication
    Choose two distinct prime numbers
    Compute n = pq
    Compute the totient of the product as φ(n) = (p − 1)(q − 1)
    Choose any number 1 < e < 3120 that is coprime to 3120. Choosing a prime number for e leaves us only to check that e is not a divisor of 3120
    Compute d, the modular multiplicative inverse of e (mod φ(n)) yielding,

