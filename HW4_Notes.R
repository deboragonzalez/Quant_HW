HW4 Notes
> evaluate(sd, c(1.4, 3.6, 7.9, 8.8))

Your evaluate() function is expecting two arguments:
  
  A function (like sd)
    
    A data object (like the numeric vector)

So the correct way to call it is something like:
  
  evaluate(sd, c(1.4, 3.6, 7.9, 8.8))

| The idea of passing functions as arguments to other functions is an important and fundamental
| concept in programming.

| You may be surprised to learn that you can pass a function as an argument without first
| defining the passed function. Functions that are not named are appropriately known as
| anonymous functions.

Let's use the evaluate function to explore how anonymous functions work. For the first
| argument of the evaluate function we're going to write a tiny function that fits on one line.
| In the second argument we'll pass some data to the tiny anonymous function in the first
| argument.

Type the following command and then we'll discuss how it works: evaluate(function(x){x+1}, 6)

> evaluate(function(x){x+1}, 6)
[1] 7

| That's correct!

  |=========================================================                              |  65%
| The first argument is a tiny anonymous function that takes one argument `x` and returns `x+1`.
| We passed the number 6 into this function so the entire expression evaluates to 7.

Try using evaluate() along with an anonymous function to return the first element of the
| vector c(8, 4, 0). Your anonymous function should only take one argument which should be a
| variable `x`.

> evaluate(function(x){1}, c(8, 4, 0))
[1] 1

| Keep trying! Or, type info() for more options.

| You may need to recall how to index vector elements. Remember that your anonymous function
| should only have one argument, and that argument should be named `x`.

> evaluate(function(x){x[1]}, c(8, 4, 0))
[1] 8

| That's correct!
  
  |============================================================                           |  69%
| Now try using evaluate() along with an anonymous function to return the last element of the
| vector c(8, 4, 0). Your anonymous function should only take one argument which should be a
| variable `x`.
> evaluate(function(x){x[3]}, c(8, 4, 0))
[1] 0

| That's not exactly what I'm looking for. Try again. Or, type info() for more options.

| You may need to recall how to index vector elements. Remember that your anonymous function
| should only have one argument, and that argument should be named `x`. Using the length()
| function in your anonymous function may help you.

> evaluate(function(x){x[length(x)]}, c(8, 4, 0))
[1] 0

| You nailed it! Good job!
  
  | As you can see the first argument of paste() is `...` which is referred to as an ellipsis or
| simply dot-dot-dot. The ellipsis allows an indefinite number of arguments to be passed into a
| function. In the case of paste() any number of strings can be passed as arguments and paste()
| will return all of the strings combined into one string.

| Just to see how paste() works, type paste("Programming", "is", "fun!")

> paste("Programming", "is", "fun!")
[1] "Programming is fun!"

You made your own binary operator! Let's test it out. Paste together the strings: 'I', 'love',
| 'R!' using your new binary operator.

Browse[1]> "I" %p% "love" %p% "R!"
[1] "I love R!"

| Your dedication is inspiring!

  |=====================================================================================  |  98%
| We've come to the end of our lesson! Go out there and write some great functions!
  