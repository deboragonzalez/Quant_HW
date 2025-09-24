HW 3 Swirl Lesson Notes

| There are two logical values in R, also called boolean values. They are TRUE and FALSE. In R
| you can construct logical expressions which will evaluate to either TRUE or FALSE.

equality operator, represented by two equals signs `==`

The less than operator `<` tests whether the number on the left side of the operator (called the 
left operand) is less than the number on the right side of the operator (called the right operand)

less-than-or-equal-to operator `<=` which tests whether the left operand is
| less than or equal to the right operand.

corresponding greater than `>` and greater-than-or-equal-to
| `>=` operators

the 'not equals' operator represented by `!=`. Not equals
| tests whether two values are unequal

the NOT operator (negation) '!'

Try using the NOT operator and the equals operator to find the opposite of whether 5
| is equal to 7.

> !(5==7)
[1] TRUE

Review: The equals operator `==` tests whether two boolean values or
| numbers are equal, the not equals operator `!=` tests whether two boolean values or numbers
| are unequal, and the NOT operator `!` negates logical expressions so that TRUE expressions
| become FALSE and FALSE expressions become TRUE.

What do you think the following expression will evaluate to?: (TRUE != FALSE) == !(6 == 7)

1: Can there be objective truth when programming?
  2: TRUE
3: FALSE
4: %>%
  
  Selection: 2

| All that hard work is paying off!
  
  There are two AND operators in R, `&` and `&&`. Both
| operators work similarly, if the right and left operands of AND are both TRUE the entire
| expression is TRUE, otherwise it is FALSE.

You can use the `&` operator to evaluate AND across a vector. The `&&` version of AND only
| evaluates the first member of a vector.

The OR operator follows a similar set of rules. The `|` version of OR evaluates OR across an
| entire vector, while the `||` version of OR only evaluates the first member of a vector.

> TRUE | c(TRUE, FALSE, FALSE)
[1] TRUE TRUE TRUE

| You are quite good my friend!
  
  > TRUE || c(TRUE, FALSE, FALSE)
[1] TRUE

| You are quite good my friend!
  
  > 5 > 8 || 6 != 8 && 4 > 3.9
[1] TRUE

| You are really on a roll!
  
  |================================================                                       |  55%
| Let's walk through the order of operations in the above case. First the left and right
| operands of the AND operator are evaluated. 6 is not equal 8, 4 is greater than 3.9, therefore
| both operands are TRUE so the resulting expression `TRUE && TRUE` evaluates to TRUE. Then the
| left operand of the OR operator is evaluated: 5 is not greater than 8 so the entire expression
| is reduced to FALSE || TRUE. Since the right operand of this expression is TRUE the entire
| expression evaluates to TRUE.

| Which one of the following expressions evaluates to TRUE?

1: TRUE && FALSE || 9 >= 4 && 3 < 6****
2: FALSE || TRUE && FALSE
3: 99.99 > 100 || 45 < 7.3 || 4 != 4.0
4: TRUE && 62 < 62 && 44 >= 44

| Which one of the following expressions evaluates to FALSE?

1: FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
2: FALSE || TRUE && 6 != 4 || 9 > 4
3: !(8 > 4) ||  5 == 5.0 && 7.8 >= 7.79
4: 6 >= -9 && !(6 > 7) && !(!TRUE)

Selection: 1

| Perseverance, that's the answer.

The function isTRUE() takes one argument. If that argument evaluates to TRUE, the function
| will return TRUE. Otherwise, the function will return FALSE. Try using this function by
| typing: isTRUE(6 > 4)

> 
  > 
  > isTRUE(6>4)
[1] TRUE


| Which of the following evaluates to TRUE?
  
  1: isTRUE(!TRUE)
2: !isTRUE(4 < 3)
3: !isTRUE(8 != 5)
4: isTRUE(NA)
5: isTRUE(3)

Selection: 2

| Great job!
  
  | The function identical() will return TRUE if the two R objects passed to it as arguments are
| identical. Try out the identical() function by typing: identical('twins', 'twins')

> identical('twins', 'twins')
[1] TRUE

| Which of the following evaluates to TRUE?
  
  1: identical(5 > 4, 3 < 3.1)
2: !identical(7, 7)
3: identical(4, 3.1)
4: identical('hello', 'Hello')

Selection: 1

| Keep working like that and you'll get there!

| You should also be aware of the xor() function, which takes two arguments. The xor() function
| stands for exclusive OR. If one argument evaluates to TRUE and one argument evaluates to
| FALSE, then this function will return TRUE, otherwise it will return FALSE. Try out the xor()
| function by typing: xor(5 == 6, !FALSE)

> xor(5 == 6, !FALSE)
[1] TRUE

| All that hard work is paying off!

  |================================================================                       |  73%
| 5 == 6 evaluates to FALSE, !FALSE evaluates to TRUE, so xor(FALSE, TRUE) evaluates to TRUE. On
| the other hand if the first argument was changed to 5 == 5 and the second argument was
| unchanged then both arguments would have been TRUE, so xor(TRUE, TRUE) would have evaluated to
| FALSE.

| Which of the following evaluates to FALSE?

| For xor() to evaluate to TRUE, one argument must be TRUE and one must be FALSE.

1: xor(identical(xor, 'xor'), 7 == 7.0)
2: xor(4 >= 9, 8 != 8.0)****
3: xor(!isTRUE(TRUE), 6 > -1)
4: xor(!!TRUE, !!FALSE)

Selection: 2

| You're the best!
  
  For the next few questions, we're going to need to create a vector of integers called ints.
| Create this vector by typing: ints <- sample(10)

> ints <- sample(10)

| The vector `ints` is a random sampling of integers from 1 to 10 without replacement. Let's say
| we wanted to ask some logical questions about contents of ints. If we type ints > 5, we will
| get a logical vector corresponding to whether each element of ints is greater than 5. Try
| typing: ints > 5

> ints > 5
[1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE

| We can use the resulting logical vector to ask other questions about ints. The which()
| function takes a logical vector as an argument and returns the indices of the vector that are
| TRUE. For example which(c(TRUE, FALSE, TRUE)) would return the vector c(1, 3).

...

|===========================================================================            |  86%
| Use the which() function to find the indices of ints that are greater than 7.

> which(ints > 7)
[1] 3 4 5

| Keep working like that and you'll get there!

Like the which() function, the functions any() and all() take logical vectors as their
| argument. The any() function will return TRUE if one or more of the elements in the logical
| vector is TRUE. The all() function will return TRUE if every element in the logical vector is
| TRUE.

 Use the any() function to see if any of the elements of ints are less than zero.

> any(ints < 0)
[1] FALSE

| You're the best!
  
  |==================================================================================     |  94%
| Use the all() function to see if all of the elements of ints are greater than zero.

> all(ints > 0)
[1] TRUE

| All that practice is paying off!
  
  | Which of the following evaluates to TRUE?
  
  1: all(c(TRUE, FALSE, TRUE))
2: any(ints == 2.5)
3: all(ints == 10)
4: any(ints == 10)

Selection: 4

| You got it right!
  
  
Functions (Lesson 9)


