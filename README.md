# Number System

A neat little number system, based around the idea of factoring a number into pairs of primes and exponents, then factoring the position of the primes (for example 2 has position 1 and 7 has position 4) recursively.

The transform function transforms a number to one of this system, and reform can be used to undo the transformation.

A little demo provided shows that this number system seems to generate numbers with a length that is longer than their binary representation by a constant factor (around 5 times). This could mean that this system is reasonable in terms of length at least.

To explore: 
- memoize some of the prime calculations that are repeated in order to improve efficiency
- since position of the primes is being used, try using the exponents as positional arguments and recursively factor
