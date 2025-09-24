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

| If you've worked through any other part of this course, you've probably used some functions
| already. Functions are usually characterized by the name of the function followed by
| parentheses.

...

|====                                                                                   |   4%
| Let's try using a few basic functions just for fun. The Sys.Date() function returns a string
| representing today's date. Type Sys.Date() below and see what happens.

> 
  > Sys.Date()
[1] "2025-09-24"

| You got it right!
  
  |=====                                                                                  |   6%
| Most functions in R return a value. Functions like Sys.Date() return a value based on your
| computer's environment, while other functions manipulate input data in order to compute a
| return value.

...

  |=======                                                                                |   8%
| The mean() function takes a vector of numbers as input, and returns the average of all of the
| numbers in the input vector. Inputs to functions are often called arguments. Providing
| arguments to a function is also sometimes called passing arguments to that function. Arguments
| you want to pass to a function go inside the function's parentheses. Try passing the argument
| c(2, 4, 5) to the mean() function.

> mean(c(2, 4, 5))
[1] 3.666667

| You are really on a roll!
  
  |=========                                                                              |  10%
| Functions usually take arguments which are variables that the function operates on. For
| example, the mean() function takes a vector as an argument, like in the case of
| mean(c(2,6,8)). The mean() function then adds up all of the numbers in the vector and divides
| that sum by the length of the vector.


boring_function <- function(x) {
  x
}


| Now that you've created your first function let's test it! Type: boring_function('My first
| function!'). If your function works, it should just return the string: 'My first function!'

> boring_function('My first function!')
[1] "My first function!"

| You are amazing!
  
  |================                                                                       |  18%
| Congratulations on writing your first function. By writing functions, you can gain serious
| insight into how R works. As John Chambers, the creator of R once said:
  | 
  | To understand computations in R, two slogans are helpful: 1. Everything that exists is an
| object. 2. Everything that happens is a function call.

...

|==================                                                                     |  20%
| If you want to see the source code for any function, just type the function name without any
| arguments or parentheses. Let's try this out with the function you just created. Type:
| boring_function to view its source code.



R version 4.5.1 (2025-06-13) -- "Great Square Root"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/Documents/Psych Research 2025/Quant_HW/.RData]

> swirl()
Error in swirl() : could not find function "swirl"

> library(swirl)

| Hi! I see that you have some variables saved in your workspace. To keep things running
| smoothly, I recommend you clean up before starting swirl.

| Type ls() to see a list of the variables in your workspace. Then, type rm(list=ls()) to clear
| your workspace.

| Type swirl() when you are ready to begin.
> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you did
| then. If you are new, call yourself something unique.

What shall I call you? Debi

| Would you like to continue with one of these lessons?
  
  1: R Programming Logic
2: No. Let me start something new.

Selection: 1



| Many of the questions in this lesson will involve evaluating logical expressions. It may be
| useful to open up a second R terminal where you can experiment with some of these expressions.

...

|=====                                                                                  |   6%
| Creating logical expressions requires logical operators. You're probably familiar with
| arithmetic operators like `+`, `-`, `*`, and `/`. The first logical operator we are going to
| discuss is the equality operator, represented by two equals signs `==`. Use the equality
| operator below to find out if TRUE is equal to TRUE.

> TRUE == TRUE
[1] TRUE

| Excellent work!

  |=======                                                                                |   8%
| Just like arithmetic, logical expressions can be grouped by parenthesis so that the entire
| expression (TRUE == TRUE) == TRUE evaluates to TRUE.

...

  |=========                                                                              |  10%
| To test out this property, try evaluating (FALSE == TRUE) == FALSE .

> (FALSE == TRUE) == FALSE
[1] TRUE

| That's a job well done!
  
  |===========                                                                            |  12%
| The equality operator can also be used to compare numbers. Use `==` to see if 6 is equal to 7.

> 6 == 7
[1] FALSE

| Great job!
  
  |============                                                                           |  14%
| The previous expression evaluates to FALSE because 6 is less than 7. Thankfully, there are
| inequality operators that allow us to test if a value is less than or greater than another
| value.

...

|==============                                                                         |  16%
| The less than operator `<` tests whether the number on the left side of the operator (called
                                                                                        | the left operand) is less than the number on the right side of the operator (called the right
                                                                                                                                                                       | operand). Write an expression to test whether 6 is less than 7.

> 6 < 7
[1] TRUE

| You are really on a roll!
  
  |================                                                                       |  18%
| There is also a less-than-or-equal-to operator `<=` which tests whether the left operand is
| less than or equal to the right operand. Write an expression to test whether 10 is less than
| or equal to 10.

> 10 <= 10
[1] TRUE

| You are really on a roll!
  
  |==================                                                                     |  20%
| Keep in mind that there are the corresponding greater than `>` and greater-than-or-equal-to
| `>=` operators.

...

|====================                                                                   |  22%
| Which of the following evaluates to FALSE?
  
  1: 0 > -36
2: 7 == 7
3: 6 < 8
4: 9 >= 10

Selection: 4

| That's the answer I was looking for.

  |=====================                                                                  |  24%
| Which of the following evaluates to TRUE?

1: 9 >= 10
2: 7 == 9
3: 57 < 8
4: -6 > -7

Selection: 4

| Nice work!

  |=======================                                                                |  27%
| The next operator we will discuss is the 'not equals' operator represented by `!=`. Not equals
| tests whether two values are unequal, so TRUE != FALSE evaluates to TRUE. Like the equality
| operator, `!=` can also be used with numbers. Try writing an expression to see if 5 is not
| equal to 7.

> 5 != 7
[1] TRUE

| You nailed it! Good job!

  |=========================                                                              |  29%
| In order to negate boolean expressions you can use the NOT operator. An exclamation point `!`
| will cause !TRUE (say: not true) to evaluate to FALSE and !FALSE (say: not false) to evaluate
| to TRUE. Try using the NOT operator and the equals operator to find the opposite of whether 5
| is equal to 7.

> !(5==7)
[1] TRUE

| Your dedication is inspiring!

  |===========================                                                            |  31%
| Let's take a moment to review. The equals operator `==` tests whether two boolean values or
| numbers are equal, the not equals operator `!=` tests whether two boolean values or numbers
| are unequal, and the NOT operator `!` negates logical expressions so that TRUE expressions
| become FALSE and FALSE expressions become TRUE.

...

|============================                                                           |  33%
| Which of the following evaluates to FALSE?
  
  1: !(0 >= -1)
2: 7 != 8
3: 9 < 10
4: !FALSE

Selection: 
  Enter an item from the menu, or 0 to exit
Selection: 1

| Excellent work!
  
  |==============================                                                         |  35%
| What do you think the following expression will evaluate to?: (TRUE != FALSE) == !(6 == 7)

1: Can there be objective truth when programming?
  2: TRUE
3: FALSE
4: %>%
  
  Selection: 2

| All that hard work is paying off!
  
  |================================                                                       |  37%
| At some point you may need to examine relationships between multiple logical expressions. This
| is where the AND operator and the OR operator come in.

...

|==================================                                                     |  39%
| Let's look at how the AND operator works. There are two AND operators in R, `&` and `&&`. Both
| operators work similarly, if the right and left operands of AND are both TRUE the entire
| expression is TRUE, otherwise it is FALSE. For example, TRUE & TRUE evaluates to TRUE. Try
| typing FALSE & FALSE to how it is evaluated.

> FALSE & FALSE
[1] FALSE

| Excellent job!

  |====================================                                                   |  41%
| You can use the `&` operator to evaluate AND across a vector. The `&&` version of AND only
| evaluates the first member of a vector. Let's test both for practice. Type the expression TRUE
| & c(TRUE, FALSE, FALSE).

> TRUE & c(TRUE, FALSE, FALSE)
[1]  TRUE FALSE FALSE

| You're the best!

  |=====================================                                                  |  43%
| The OR operator follows a similar set of rules. The `|` version of OR evaluates OR across an
| entire vector, while the `||` version of OR only evaluates the first member of a vector.

...

  |=======================================                                                |  45%
| An expression using the OR operator will evaluate to TRUE if the left operand or the right
| operand is TRUE. If both are TRUE, the expression will evaluate to TRUE, however if neither
| are TRUE, then the expression will be FALSE.

...

  |=========================================                                              |  47%
| Let's test out the vectorized version of the OR operator. Type the expression TRUE | c(TRUE,
                                                                                         | FALSE, FALSE).

> TRUE | c(TRUE, FALSE, FALSE)
[1] TRUE TRUE TRUE

| You are quite good my friend!
  
  |===========================================                                            |  49%
| Now let's try out the non-vectorized version of the OR operator. Type the expression TRUE ||
| c(TRUE, FALSE, FALSE).

> TRUE || c(TRUE, FALSE, FALSE)
[1] TRUE

| You are quite good my friend!

  |============================================                                           |  51%
| Logical operators can be chained together just like arithmetic operators. The expressions: `6
| != 10 && FALSE && 1 >= 2` or `TRUE || 5 < 9.3 || FALSE` are perfectly normal to see.

...

  |==============================================                                         |  53%
| As you may recall, arithmetic has an order of operations and so do logical expressions. All
| AND operators are evaluated before OR operators. Let's look at an example of an ambiguous
| case. Type: 5 > 8 || 6 != 8 && 4 > 3.9

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

...

  |==================================================                                     |  57%
| Which one of the following expressions evaluates to TRUE?

1: TRUE && FALSE || 9 >= 4 && 3 < 6
2: FALSE || TRUE && FALSE
3: 99.99 > 100 || 45 < 7.3 || 4 != 4.0
4: TRUE && 62 < 62 && 44 >= 44

Selection: 4

| One more time. You can do it!

| Try to evaluate each expression in isolation and build up an answer.

1: TRUE && FALSE || 9 >= 4 && 3 < 6
2: FALSE || TRUE && FALSE
3: TRUE && 62 < 62 && 44 >= 44
4: 99.99 > 100 || 45 < 7.3 || 4 != 4.0

Selection: 1

| Excellent work!

  |===================================================                                    |  59%
| Which one of the following expressions evaluates to FALSE?

1: FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
2: FALSE || TRUE && 6 != 4 || 9 > 4
3: !(8 > 4) ||  5 == 5.0 && 7.8 >= 7.79
4: 6 >= -9 && !(6 > 7) && !(!TRUE)

Selection: 1

| Perseverance, that's the answer.

|=====================================================                                  |  61%
| Now that you're familiar with R's logical operators you can take advantage of a few functions
| that R provides for dealing with logical expressions.

...

|=======================================================                                |  63%
| The function isTRUE() takes one argument. If that argument evaluates to TRUE, the function
| will return TRUE. Otherwise, the function will return FALSE. Try using this function by
| typing: isTRUE(6 > 4)

> 
  > 
  > isTRUE(6>4)
[1] TRUE

| You're the best!

  |=========================================================                              |  65%
| Which of the following evaluates to TRUE?

1: isTRUE(!TRUE)
2: !isTRUE(4 < 3)
3: !isTRUE(8 != 5)
4: isTRUE(NA)
5: isTRUE(3)

Selection: 2

| Great job!

  |===========================================================                            |  67%
| The function identical() will return TRUE if the two R objects passed to it as arguments are
| identical. Try out the identical() function by typing: identical('twins', 'twins')

> identical('twins', 'twins')
[1] TRUE

| Excellent work!

  |============================================================                           |  69%
| Which of the following evaluates to TRUE?

1: identical(5 > 4, 3 < 3.1)
2: !identical(7, 7)
3: identical(4, 3.1)
4: identical('hello', 'Hello')

Selection: 1

| Keep working like that and you'll get there!
  
  |==============================================================                         |  71%
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

...

|==================================================================                     |  76%
| Which of the following evaluates to FALSE?
  
  1: xor(!!TRUE, !!FALSE)
2: xor(identical(xor, 'xor'), 7 == 7.0)
3: xor(4 >= 9, 8 != 8.0)
4: xor(!isTRUE(TRUE), 6 > -1)

Selection: 4

| Keep trying!
  
  | For xor() to evaluate to TRUE, one argument must be TRUE and one must be FALSE.

1: xor(4 >= 9, 8 != 8.0)
2: xor(identical(xor, 'xor'), 7 == 7.0)
3: xor(!!TRUE, !!FALSE)
4: xor(!isTRUE(TRUE), 6 > -1)

Selection: 3

| Not quite! Try again.

| For xor() to evaluate to TRUE, one argument must be TRUE and one must be FALSE.

1: xor(identical(xor, 'xor'), 7 == 7.0)
2: xor(!isTRUE(TRUE), 6 > -1)
3: xor(!!TRUE, !!FALSE)
4: xor(4 >= 9, 8 != 8.0)

Selection: 1

| Not quite right, but keep trying.

| For xor() to evaluate to TRUE, one argument must be TRUE and one must be FALSE.

1: xor(identical(xor, 'xor'), 7 == 7.0)
2: xor(4 >= 9, 8 != 8.0)
3: xor(!isTRUE(TRUE), 6 > -1)
4: xor(!!TRUE, !!FALSE)

Selection: 2

| You're the best!

  |===================================================================                    |  78%
| For the next few questions, we're going to need to create a vector of integers called ints.
| Create this vector by typing: ints <- sample(10)

> ints <- sample(10)

| All that hard work is paying off!
  
  |=====================================================================                  |  80%
| Now simply display the contents of ints.

> ints
[1]  3  1  9  8 10  6  7  2  5  4

| You nailed it! Good job!
  
  |=======================================================================                |  82%
| The vector `ints` is a random sampling of integers from 1 to 10 without replacement. Let's say
| we wanted to ask some logical questions about contents of ints. If we type ints > 5, we will
| get a logical vector corresponding to whether each element of ints is greater than 5. Try
| typing: ints > 5

> ints > 5
 [1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE

| All that hard work is paying off!

  |=========================================================================              |  84%
| We can use the resulting logical vector to ask other questions about ints. The which()
| function takes a logical vector as an argument and returns the indices of the vector that are
| TRUE. For example which(c(TRUE, FALSE, TRUE)) would return the vector c(1, 3).

...

  |===========================================================================            |  86%
| Use the which() function to find the indices of ints that are greater than 7.

> which(ints > 7)
[1] 3 4 5

| Keep working like that and you'll get there!
  
  |============================================================================           |  88%
| Which of the following commands would produce the indices of the elements in ints that are
| less than or equal to 2?
  
  1: ints < 2
2: which(ints <= 2)
3: ints <= 2
4: which(ints < 2)

Selection: 2

| That's the answer I was looking for.

  |==============================================================================         |  90%
| Like the which() function, the functions any() and all() take logical vectors as their
| argument. The any() function will return TRUE if one or more of the elements in the logical
| vector is TRUE. The all() function will return TRUE if every element in the logical vector is
| TRUE.

...

  |================================================================================       |  92%
| Use the any() function to see if any of the elements of ints are less than zero.

> any(ints < 0)
[1] FALSE

| You're the best!
  
  |==================================================================================     |  94%
| Use the all() function to see if all of the elements of ints are greater than zero.

> all(ints > 0)
[1] TRUE

| All that practice is paying off!
  
  |===================================================================================    |  96%
| Which of the following evaluates to TRUE?
  
  1: all(c(TRUE, FALSE, TRUE))
2: any(ints == 2.5)
3: all(ints == 10)
4: any(ints == 10)

Selection: 4

| You got it right!
  
  |=====================================================================================  |  98%
| That's all for this introduction to logic in R. If you really want to see what you can do with
| logic, check out the control flow lesson!

...

  |=======================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 2

| All that practice is paying off!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!
  
  Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers    
4: Vectors                    5: Missing Values             6: Subsetting Vectors      
7: Matrices and Data Frames   8: Logic                      9: Functions               
10: lapply and sapply         11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: 9

|                                                                                       |   0%

| Functions are one of the fundamental building blocks of the R language. They are small pieces
| of reusable code that can be treated like any other R object.

...

|==                                                                                     |   2%
| If you've worked through any other part of this course, you've probably used some functions
| already. Functions are usually characterized by the name of the function followed by
| parentheses.

...

|====                                                                                   |   4%
| Let's try using a few basic functions just for fun. The Sys.Date() function returns a string
| representing today's date. Type Sys.Date() below and see what happens.

> 
  > Sys.Date()
[1] "2025-09-24"

| You got it right!
  
  |=====                                                                                  |   6%
| Most functions in R return a value. Functions like Sys.Date() return a value based on your
| computer's environment, while other functions manipulate input data in order to compute a
| return value.

...

  |=======                                                                                |   8%
| The mean() function takes a vector of numbers as input, and returns the average of all of the
| numbers in the input vector. Inputs to functions are often called arguments. Providing
| arguments to a function is also sometimes called passing arguments to that function. Arguments
| you want to pass to a function go inside the function's parentheses. Try passing the argument
| c(2, 4, 5) to the mean() function.

> mean(c(2, 4, 5))
[1] 3.666667

| You are really on a roll!
  
  |=========                                                                              |  10%
| Functions usually take arguments which are variables that the function operates on. For
| example, the mean() function takes a vector as an argument, like in the case of
| mean(c(2,6,8)). The mean() function then adds up all of the numbers in the vector and divides
| that sum by the length of the vector.

...

|===========                                                                            |  12%
| In the following question you will be asked to modify a script that will appear as soon as you
| move on from this question. When you have finished modifying the script, save your changes to
| the script and type submit() and the script will be evaluated. There will be some comments in
| the script that opens up, so be sure to read them!
  
  ...

|============                                                                           |  14%
| The last R expression to be evaluated in a function will become the return value of that
| function. We want this function to take one argument, x, and return x without modifying it.
| Delete the pound sign so that x is returned without any modification. Make sure to save your
| script before you type submit().

> submit()

| Sourcing your script...


| Keep up the great work!
  
  |==============                                                                         |  16%
| Now that you've created your first function let's test it! Type: boring_function('My first
| function!'). If your function works, it should just return the string: 'My first function!'

> boring_function('My first function!')
[1] "My first function!"

| You are amazing!
  
  |================                                                                       |  18%
| Congratulations on writing your first function. By writing functions, you can gain serious
| insight into how R works. As John Chambers, the creator of R once said:
  | 
  | To understand computations in R, two slogans are helpful: 1. Everything that exists is an
| object. 2. Everything that happens is a function call.

...

|==================                                                                     |  20%
| If you want to see the source code for any function, just type the function name without any
| arguments or parentheses. Let's try this out with the function you just created. Type:
| boring_function to view its source code.

> boring_function
function(x) {
  x
}
<bytecode: 0x7fac06e38f88>

| All that hard work is paying off!


my_mean <- function(my_vector) {
  sum(my_vector)/length(my_vector)
  # Remember: the last expression evaluated will be returned! 
}

Now test out your my_mean() function by finding the mean of the vector c(4, 5, 10).

> my_mean(c(4,5,10))
[1] 6.333333

| You're the best!
  
  | Next, let's try writing a function with default arguments. You can set default values for a
| function's arguments, and this can be useful if you think someone who uses your function will
| set a certain argument to the same value most of the time.

remainder <- function(num, divisor = 2) {
  num %% divisor 
  
  # Remember: the last expression evaluated will be returned! 
}


R version 4.5.1 (2025-06-13) -- "Great Square Root"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/Documents/Psych Research 2025/Quant_HW/.RData]

> swirl()
Error in swirl() : could not find function "swirl"

> library(swirl)

| Hi! I see that you have some variables saved in your workspace. To keep things running
| smoothly, I recommend you clean up before starting swirl.

| Type ls() to see a list of the variables in your workspace. Then, type rm(list=ls()) to clear
| your workspace.

| Type swirl() when you are ready to begin.
> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you did
| then. If you are new, call yourself something unique.

What shall I call you? Debi

| Would you like to continue with one of these lessons?

1: R Programming Logic
2: No. Let me start something new.

Selection: 1



| Many of the questions in this lesson will involve evaluating logical expressions. It may be
| useful to open up a second R terminal where you can experiment with some of these expressions.

...

  |=====                                                                                  |   6%
| Creating logical expressions requires logical operators. You're probably familiar with
| arithmetic operators like `+`, `-`, `*`, and `/`. The first logical operator we are going to
| discuss is the equality operator, represented by two equals signs `==`. Use the equality
| operator below to find out if TRUE is equal to TRUE.

> TRUE == TRUE
[1] TRUE

| Excellent work!
  
  |=======                                                                                |   8%
| Just like arithmetic, logical expressions can be grouped by parenthesis so that the entire
| expression (TRUE == TRUE) == TRUE evaluates to TRUE.

...

|=========                                                                              |  10%
| To test out this property, try evaluating (FALSE == TRUE) == FALSE .

> (FALSE == TRUE) == FALSE
[1] TRUE

| That's a job well done!

  |===========                                                                            |  12%
| The equality operator can also be used to compare numbers. Use `==` to see if 6 is equal to 7.

> 6 == 7
[1] FALSE

| Great job!

  |============                                                                           |  14%
| The previous expression evaluates to FALSE because 6 is less than 7. Thankfully, there are
| inequality operators that allow us to test if a value is less than or greater than another
| value.

...

  |==============                                                                         |  16%
| The less than operator `<` tests whether the number on the left side of the operator (called
| the left operand) is less than the number on the right side of the operator (called the right
| operand). Write an expression to test whether 6 is less than 7.

> 6 < 7
[1] TRUE

| You are really on a roll!

  |================                                                                       |  18%
| There is also a less-than-or-equal-to operator `<=` which tests whether the left operand is
| less than or equal to the right operand. Write an expression to test whether 10 is less than
| or equal to 10.

> 10 <= 10
[1] TRUE

| You are really on a roll!

  |==================                                                                     |  20%
| Keep in mind that there are the corresponding greater than `>` and greater-than-or-equal-to
| `>=` operators.

...

  |====================                                                                   |  22%
| Which of the following evaluates to FALSE?

1: 0 > -36
2: 7 == 7
3: 6 < 8
4: 9 >= 10

Selection: 4

| That's the answer I was looking for.

|=====================                                                                  |  24%
| Which of the following evaluates to TRUE?
  
  1: 9 >= 10
2: 7 == 9
3: 57 < 8
4: -6 > -7

Selection: 4

| Nice work!
  
  |=======================                                                                |  27%
| The next operator we will discuss is the 'not equals' operator represented by `!=`. Not equals
| tests whether two values are unequal, so TRUE != FALSE evaluates to TRUE. Like the equality
| operator, `!=` can also be used with numbers. Try writing an expression to see if 5 is not
| equal to 7.

> 5 != 7
[1] TRUE

| You nailed it! Good job!
  
  |=========================                                                              |  29%
| In order to negate boolean expressions you can use the NOT operator. An exclamation point `!`
| will cause !TRUE (say: not true) to evaluate to FALSE and !FALSE (say: not false) to evaluate
| to TRUE. Try using the NOT operator and the equals operator to find the opposite of whether 5
| is equal to 7.

> !(5==7)
[1] TRUE

| Your dedication is inspiring!
  
  |===========================                                                            |  31%
| Let's take a moment to review. The equals operator `==` tests whether two boolean values or
| numbers are equal, the not equals operator `!=` tests whether two boolean values or numbers
| are unequal, and the NOT operator `!` negates logical expressions so that TRUE expressions
| become FALSE and FALSE expressions become TRUE.

...

  |============================                                                           |  33%
| Which of the following evaluates to FALSE?

1: !(0 >= -1)
2: 7 != 8
3: 9 < 10
4: !FALSE

Selection: 
Enter an item from the menu, or 0 to exit
Selection: 1

| Excellent work!

  |==============================                                                         |  35%
| What do you think the following expression will evaluate to?: (TRUE != FALSE) == !(6 == 7)

1: Can there be objective truth when programming?
2: TRUE
3: FALSE
4: %>%

Selection: 2

| All that hard work is paying off!

  |================================                                                       |  37%
| At some point you may need to examine relationships between multiple logical expressions. This
| is where the AND operator and the OR operator come in.

...

  |==================================                                                     |  39%
| Let's look at how the AND operator works. There are two AND operators in R, `&` and `&&`. Both
| operators work similarly, if the right and left operands of AND are both TRUE the entire
| expression is TRUE, otherwise it is FALSE. For example, TRUE & TRUE evaluates to TRUE. Try
| typing FALSE & FALSE to how it is evaluated.

> FALSE & FALSE
[1] FALSE

| Excellent job!
  
  |====================================                                                   |  41%
| You can use the `&` operator to evaluate AND across a vector. The `&&` version of AND only
| evaluates the first member of a vector. Let's test both for practice. Type the expression TRUE
| & c(TRUE, FALSE, FALSE).

> TRUE & c(TRUE, FALSE, FALSE)
[1]  TRUE FALSE FALSE

| You're the best!
  
  |=====================================                                                  |  43%
| The OR operator follows a similar set of rules. The `|` version of OR evaluates OR across an
| entire vector, while the `||` version of OR only evaluates the first member of a vector.

...

|=======================================                                                |  45%
| An expression using the OR operator will evaluate to TRUE if the left operand or the right
| operand is TRUE. If both are TRUE, the expression will evaluate to TRUE, however if neither
| are TRUE, then the expression will be FALSE.

...

|=========================================                                              |  47%
| Let's test out the vectorized version of the OR operator. Type the expression TRUE | c(TRUE,
| FALSE, FALSE).

> TRUE | c(TRUE, FALSE, FALSE)
[1] TRUE TRUE TRUE

| You are quite good my friend!

  |===========================================                                            |  49%
| Now let's try out the non-vectorized version of the OR operator. Type the expression TRUE ||
  | c(TRUE, FALSE, FALSE).

> TRUE || c(TRUE, FALSE, FALSE)
[1] TRUE

| You are quite good my friend!
  
  |============================================                                           |  51%
| Logical operators can be chained together just like arithmetic operators. The expressions: `6
| != 10 && FALSE && 1 >= 2` or `TRUE || 5 < 9.3 || FALSE` are perfectly normal to see.

...

|==============================================                                         |  53%
| As you may recall, arithmetic has an order of operations and so do logical expressions. All
| AND operators are evaluated before OR operators. Let's look at an example of an ambiguous
| case. Type: 5 > 8 || 6 != 8 && 4 > 3.9

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

...

|==================================================                                     |  57%
| Which one of the following expressions evaluates to TRUE?
  
  1: TRUE && FALSE || 9 >= 4 && 3 < 6
2: FALSE || TRUE && FALSE
3: 99.99 > 100 || 45 < 7.3 || 4 != 4.0
4: TRUE && 62 < 62 && 44 >= 44

Selection: 4

| One more time. You can do it!
  
  | Try to evaluate each expression in isolation and build up an answer.

1: TRUE && FALSE || 9 >= 4 && 3 < 6
2: FALSE || TRUE && FALSE
3: TRUE && 62 < 62 && 44 >= 44
4: 99.99 > 100 || 45 < 7.3 || 4 != 4.0

Selection: 1

| Excellent work!
  
  |===================================================                                    |  59%
| Which one of the following expressions evaluates to FALSE?
  
  1: FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
2: FALSE || TRUE && 6 != 4 || 9 > 4
3: !(8 > 4) ||  5 == 5.0 && 7.8 >= 7.79
4: 6 >= -9 && !(6 > 7) && !(!TRUE)

Selection: 1

| Perseverance, that's the answer.

  |=====================================================                                  |  61%
| Now that you're familiar with R's logical operators you can take advantage of a few functions
| that R provides for dealing with logical expressions.

...

  |=======================================================                                |  63%
| The function isTRUE() takes one argument. If that argument evaluates to TRUE, the function
| will return TRUE. Otherwise, the function will return FALSE. Try using this function by
| typing: isTRUE(6 > 4)

> 
> 
> isTRUE(6>4)
[1] TRUE

| You're the best!
  
  |=========================================================                              |  65%
| Which of the following evaluates to TRUE?
  
  1: isTRUE(!TRUE)
2: !isTRUE(4 < 3)
3: !isTRUE(8 != 5)
4: isTRUE(NA)
5: isTRUE(3)

Selection: 2

| Great job!
  
  |===========================================================                            |  67%
| The function identical() will return TRUE if the two R objects passed to it as arguments are
| identical. Try out the identical() function by typing: identical('twins', 'twins')

> identical('twins', 'twins')
[1] TRUE

| Excellent work!
  
  |============================================================                           |  69%
| Which of the following evaluates to TRUE?
  
  1: identical(5 > 4, 3 < 3.1)
2: !identical(7, 7)
3: identical(4, 3.1)
4: identical('hello', 'Hello')

Selection: 1

| Keep working like that and you'll get there!

  |==============================================================                         |  71%
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

...

  |==================================================================                     |  76%
| Which of the following evaluates to FALSE?

1: xor(!!TRUE, !!FALSE)
2: xor(identical(xor, 'xor'), 7 == 7.0)
3: xor(4 >= 9, 8 != 8.0)
4: xor(!isTRUE(TRUE), 6 > -1)

Selection: 4

| Keep trying!

| For xor() to evaluate to TRUE, one argument must be TRUE and one must be FALSE.

1: xor(4 >= 9, 8 != 8.0)
2: xor(identical(xor, 'xor'), 7 == 7.0)
3: xor(!!TRUE, !!FALSE)
4: xor(!isTRUE(TRUE), 6 > -1)

Selection: 3

| Not quite! Try again.

| For xor() to evaluate to TRUE, one argument must be TRUE and one must be FALSE.

1: xor(identical(xor, 'xor'), 7 == 7.0)
2: xor(!isTRUE(TRUE), 6 > -1)
3: xor(!!TRUE, !!FALSE)
4: xor(4 >= 9, 8 != 8.0)

Selection: 1

| Not quite right, but keep trying.

| For xor() to evaluate to TRUE, one argument must be TRUE and one must be FALSE.

1: xor(identical(xor, 'xor'), 7 == 7.0)
2: xor(4 >= 9, 8 != 8.0)
3: xor(!isTRUE(TRUE), 6 > -1)
4: xor(!!TRUE, !!FALSE)

Selection: 2

| You're the best!
  
  |===================================================================                    |  78%
| For the next few questions, we're going to need to create a vector of integers called ints.
| Create this vector by typing: ints <- sample(10)

> ints <- sample(10)

| All that hard work is paying off!

  |=====================================================================                  |  80%
| Now simply display the contents of ints.

> ints
 [1]  3  1  9  8 10  6  7  2  5  4

| You nailed it! Good job!

  |=======================================================================                |  82%
| The vector `ints` is a random sampling of integers from 1 to 10 without replacement. Let's say
| we wanted to ask some logical questions about contents of ints. If we type ints > 5, we will
| get a logical vector corresponding to whether each element of ints is greater than 5. Try
| typing: ints > 5

> ints > 5
[1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE

| All that hard work is paying off!
  
  |=========================================================================              |  84%
| We can use the resulting logical vector to ask other questions about ints. The which()
| function takes a logical vector as an argument and returns the indices of the vector that are
| TRUE. For example which(c(TRUE, FALSE, TRUE)) would return the vector c(1, 3).

...

|===========================================================================            |  86%
| Use the which() function to find the indices of ints that are greater than 7.

> which(ints > 7)
[1] 3 4 5

| Keep working like that and you'll get there!

  |============================================================================           |  88%
| Which of the following commands would produce the indices of the elements in ints that are
| less than or equal to 2?

1: ints < 2
2: which(ints <= 2)
3: ints <= 2
4: which(ints < 2)

Selection: 2

| That's the answer I was looking for.

|==============================================================================         |  90%
| Like the which() function, the functions any() and all() take logical vectors as their
| argument. The any() function will return TRUE if one or more of the elements in the logical
| vector is TRUE. The all() function will return TRUE if every element in the logical vector is
| TRUE.

...

|================================================================================       |  92%
| Use the any() function to see if any of the elements of ints are less than zero.

> any(ints < 0)
[1] FALSE

| You're the best!

  |==================================================================================     |  94%
| Use the all() function to see if all of the elements of ints are greater than zero.

> all(ints > 0)
[1] TRUE

| All that practice is paying off!

  |===================================================================================    |  96%
| Which of the following evaluates to TRUE?

1: all(c(TRUE, FALSE, TRUE))
2: any(ints == 2.5)
3: all(ints == 10)
4: any(ints == 10)

Selection: 4

| You got it right!

  |=====================================================================================  |  98%
| That's all for this introduction to logic in R. If you really want to see what you can do with
| logic, check out the control flow lesson!
  
  ...

|=======================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?
  
  1: Yes
2: No

Selection: 2

| All that practice is paying off!
  
  | You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers    
 4: Vectors                    5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                      9: Functions               
10: lapply and sapply         11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: 9

  |                                                                                       |   0%

| Functions are one of the fundamental building blocks of the R language. They are small pieces
| of reusable code that can be treated like any other R object.

...

  |==                                                                                     |   2%
| If you've worked through any other part of this course, you've probably used some functions
| already. Functions are usually characterized by the name of the function followed by
| parentheses.

...

  |====                                                                                   |   4%
| Let's try using a few basic functions just for fun. The Sys.Date() function returns a string
| representing today's date. Type Sys.Date() below and see what happens.

> 
> Sys.Date()
[1] "2025-09-24"

| You got it right!

  |=====                                                                                  |   6%
| Most functions in R return a value. Functions like Sys.Date() return a value based on your
| computer's environment, while other functions manipulate input data in order to compute a
| return value.

...

|=======                                                                                |   8%
| The mean() function takes a vector of numbers as input, and returns the average of all of the
| numbers in the input vector. Inputs to functions are often called arguments. Providing
| arguments to a function is also sometimes called passing arguments to that function. Arguments
| you want to pass to a function go inside the function's parentheses. Try passing the argument
| c(2, 4, 5) to the mean() function.

> mean(c(2, 4, 5))
[1] 3.666667

| You are really on a roll!

  |=========                                                                              |  10%
| Functions usually take arguments which are variables that the function operates on. For
| example, the mean() function takes a vector as an argument, like in the case of
| mean(c(2,6,8)). The mean() function then adds up all of the numbers in the vector and divides
| that sum by the length of the vector.

...

  |===========                                                                            |  12%
| In the following question you will be asked to modify a script that will appear as soon as you
| move on from this question. When you have finished modifying the script, save your changes to
| the script and type submit() and the script will be evaluated. There will be some comments in
| the script that opens up, so be sure to read them!

...

  |============                                                                           |  14%
| The last R expression to be evaluated in a function will become the return value of that
| function. We want this function to take one argument, x, and return x without modifying it.
| Delete the pound sign so that x is returned without any modification. Make sure to save your
| script before you type submit().

> submit()

| Sourcing your script...


| Keep up the great work!

  |==============                                                                         |  16%
| Now that you've created your first function let's test it! Type: boring_function('My first
| function!'). If your function works, it should just return the string: 'My first function!'

> boring_function('My first function!')
[1] "My first function!"

| You are amazing!

  |================                                                                       |  18%
| Congratulations on writing your first function. By writing functions, you can gain serious
| insight into how R works. As John Chambers, the creator of R once said:
| 
| To understand computations in R, two slogans are helpful: 1. Everything that exists is an
| object. 2. Everything that happens is a function call.

...

  |==================                                                                     |  20%
| If you want to see the source code for any function, just type the function name without any
| arguments or parentheses. Let's try this out with the function you just created. Type:
  | boring_function to view its source code.

> boring_function
function(x) {
  x
}
<bytecode: 0x7fac06e38f88>
  
  | All that hard work is paying off!
  
  |====================                                                                   |  22%
| Time to make a more useful function! We're going to replicate the functionality of the mean()
| function by creating a function called: my_mean(). Remember that to calculate the average of
| all of the numbers in a vector you find the sum of all the numbers in the vector, and then
| divide that sum by the number of numbers in the vector.

...

  |=====================                                                                  |  24%
| Make sure to save your script before you type submit().

> submit()

| Sourcing your script...


| You are really on a roll!

  |=======================                                                                |  27%
| Now test out your my_mean() function by finding the mean of the vector c(4, 5, 10).

> my_mean(c(4,5,10))
[1] 6.333333

| You're the best!
  
  |=========================                                                              |  29%
| Next, let's try writing a function with default arguments. You can set default values for a
| function's arguments, and this can be useful if you think someone who uses your function will
| set a certain argument to the same value most of the time.

...

|===========================                                                            |  31%
| Make sure to save your script before you type submit().

> submit()

| Sourcing your script...


| All that hard work is paying off!
  
  |============================                                                           |  33%
| Let's do some testing of the remainder function. Run remainder(5) and see what happens.

> remainder(5)
[1] 1

| You nailed it! Good job!

  |==============================                                                         |  35%
| Let's take a moment to examine what just happened. You provided one argument to the function,
| and R matched that argument to 'num' since 'num' is the first argument. The default value for
| 'divisor' is 2, so the function used the default value you provided.

...

|================================                                                       |  37%
| Now let's test the remainder function by providing two arguments. Type: remainder(11, 5) and
| let's see what happens.

> remainder(11, 5)
[1] 1

| You're the best!

  |==================================                                                     |  39%
| Once again, the arguments have been matched appropriately.

...

  |====================================                                                   |  41%
| You can also explicitly specify arguments in a function. When you explicitly designate
| argument values by name, the ordering of the arguments becomes unimportant. You can try this
| out by typing: remainder(divisor = 11, num = 5).

> remainder(divisor = 11, num = 5)
[1] 5

| You are doing so well!

  |=====================================                                                  |  43%
| As you can see, there is a significant difference between remainder(11, 5) and
| remainder(divisor = 11, num = 5)!

R can also partially match arguments. Try typing remainder(4, div = 2) to see this feature in
| action.

> remainder(4, div = 2)
[1] 0

| Perseverance, that's the answer.

|=========================================                                              |  47%
| A word of warning: in general you want to make your code as easy to understand as possible.
| Switching around the orders of arguments by specifying their names or only using partial
| argument names can be confusing, so use these features with caution!
  
  With all of this talk about arguments, you may be wondering if there is a way you can see a
| function's arguments (besides looking at the documentation). Thankfully, you can use the
| args() function! Type: args(remainder) to examine the arguments for the remainder function.

> args(remainder)
function (num, divisor = 2) 
NULL

| All that hard work is paying off!

  |============================================                                           |  51%
| You may not realize it but I just tricked you into doing something pretty interesting! args()
| is a function, remainder() is a function, yet remainder was an argument for args(). Yes it's
| true: you can pass functions as arguments! This is a very powerful concept. Let's write a
| script to see how it works.
