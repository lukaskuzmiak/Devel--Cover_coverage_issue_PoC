# Devel::Cover weirdness

Proof of Concept for the Stack Overflow question: https://stackoverflow.com/questions/53690391/develcover-impossible-to-mark-branch-as-uncoverable

## Running this

Tested on Devel::Cover version 1.31

With *trigger condition* in `Test.pm` uncommented:

```
$ make coverage 

...

---------------------------- ------ ------ ------ ------ ------ ------ ------
File                           stmt   bran   cond    sub    pod   time  total
---------------------------- ------ ------ ------ ------ ------ ------ ------
lib/My/Test.pm                100.0   50.0    n/a  100.0    0.0   99.8   88.4
lib/My/Test2.pm               100.0    n/a    n/a  100.0    0.0    0.1   90.0
Total                         100.0   50.0    n/a  100.0    0.0  100.0   89.1
---------------------------- ------ ------ ------ ------ ------ ------ ------
```

After commenting out the *trigger condition* in `Test.pm`:

```
$ make coverage 

...

---------------------------- ------ ------ ------ ------ ------ ------ ------
File                           stmt   bran   cond    sub    pod   time  total
---------------------------- ------ ------ ------ ------ ------ ------ ------
lib/My/Test.pm                100.0  100.0    n/a  100.0    0.0   99.8   95.4
lib/My/Test2.pm               100.0    n/a    n/a  100.0    0.0    0.1   90.0
Total                         100.0  100.0    n/a  100.0    0.0  100.0   92.8
---------------------------- ------ ------ ------ ------ ------ ------ ------
```