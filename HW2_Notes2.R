HW 2 Notes


four different flavors -- logical vectors, vectors of positive integers, vectors of negative integers, and vectors of character strings -- 
each of which we'll cover in this lesson.


x[1:10] to view the first ten elements of x


 extract all elements of a vector that are not NA (i.e. missing data).
| Recall that is.na(x) yields a vector of logical values the same length as x, with TRUEs
| corresponding to NA values in x and FALSEs corresponding to non-NA values in x.

x[is.na(x)]
 [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 
Recall that `!` gives us the negation of a logical expression, so !is.na(x) can be read as 'is
| not NA'. Therefore, if we want to create a vector called y that contains all of the non-NA
| values from x, we can use y <- x[!is.na(x)]. Give it a try.

> y <- x[!is.na(x)]

> y
 [1]  1.27028012 -0.04128658 -1.93307837 -2.30333834 -0.23539412 -0.11198515 -1.02874286
 [8]  1.05451257 -0.17834749 -0.19137867 -0.55660373  0.07053300  0.74615153 -0.11349289
[15]  0.47199646 -0.39252838 -0.13112143 -0.52135346 -1.88939994  0.78679620

Recall that the expression y > 0 will give us a vector of logical values the same length as y,
| with TRUEs corresponding to values of y that are greater than zero and FALSEs corresponding to
| values of y that are less than or equal to zero. What do you think y[y > 0] will give you?

5: A vector of all the positive elements of y


> y[y > 0]
[1] 1.2702801 1.0545126 0.0705330 0.7461515 0.4719965 0.7867962

> x[x > 0]
 [1]        NA 1.2702801        NA        NA        NA        NA        NA        NA        NA
[10]        NA        NA 1.0545126        NA        NA        NA        NA 0.0705330 0.7461515
[19]        NA        NA        NA 0.4719965        NA        NA        NA 0.7867962

| All that hard work is paying off!

  |=================================                                                      |  38%
| Since NA is not a value, but rather a placeholder for an unknown quantity, the expression NA >
| 0 evaluates to NA. Hence we get a bunch of NAs mixed in with our positive numbers when we do
| this.

Here is what we would do instead:
> x[!is.na(x) & x > 0]
[1] 1.2702801 1.0545126 0.0705330 0.7461515 0.4719965 0.7867962

subset the 3rd, 5th, and 7th elements of x? Hint -- Use the c()
| function to specify the element numbers as a numeric vector.

> x[c(3,5,7)]
[1] NA NA NA


nothing useful, but R doesn't prevent us from asking for it. This should be a
| cautionary tale. You should always make sure that what you are asking for is within the bounds
| of the vector you're working with.
> x[0]
numeric(0)
> x[3000]
[1] NA

R accepts negative integer indexes. Whereas x[c(2, 10)] gives us ONLY the 2nd and
| 10th elements of x, x[c(-2, -10)] gives us all elements of x EXCEPT for the 2nd and 10
| elements.

> x[c(-2, -10)]
 [1]          NA          NA -0.04128658          NA -1.93307837          NA -2.30333834
 [8]          NA -0.11198515 -1.02874286          NA          NA          NA          NA
[15]          NA  1.05451257          NA          NA          NA -0.17834749 -0.19137867
[22]          NA -0.55660373  0.07053300  0.74615153 -0.11349289          NA          NA
[29]          NA  0.47199646 -0.39252838 -0.13112143          NA -0.52135346 -1.88939994
[36]          NA          NA  0.78679620

A shorthand way of specifying multiple negative numbers is to put the negative sign out in
| front of the vector of positive numbers. Type x[-c(2, 10)] to get the exact same result.
> x[-c(2, 10)]
 [1]          NA          NA -0.04128658          NA -1.93307837          NA -2.30333834
 [8]          NA -0.11198515 -1.02874286          NA          NA          NA          NA
[15]          NA  1.05451257          NA          NA          NA -0.17834749 -0.19137867
[22]          NA -0.55660373  0.07053300  0.74615153 -0.11349289          NA          NA
[29]          NA  0.47199646 -0.39252838 -0.13112143          NA -0.52135346 -1.88939994
[36]          NA          NA  0.78679620


numeric vector with three named elements
> vect <- c(foo = 11, bar = 2, norf = NA)
> vect
 foo  bar norf 
  11    2   NA 
  
| We can also get the names of vect by passing vect as an argument to the names() function. Give
| that a try.

> names(vect)
[1] "foo"  "bar"  "norf"

Creating a vector:
> vect2 <- c(11, 2, NA)

Adding names:
| Then, we can add the `names` attribute to vect2 after the fact with names(vect2) <- c("foo",
| "bar", "norf"). Go ahead.

> names(vect2) <- c("foo", "bar", "norf")

Getting the second element

> vect["bar"]
bar 
  2
  
> vect[c("foo", "bar")]
foo bar 
 11   2 
 
 
 Matrices and Data Frames:
 | The main difference, as you'll see, is that matrices can only contain a single class of data,
| while data frames can consist of many different classes of data.

| Let's create a vector containing the numbers 1 through 20 using the `:` operator. Store the
| result in a variable called my_vector.

 > my_vector <- 1:20
 > my_vector
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
 
 
 | The dim() function tells us the 'dimensions' of an object. What happens if we do
| dim(my_vector)? Give it a try.

> dim(my_vector)
NULL

> length(my_vector)
[1] 20

| You nailed it! Good job!

  |==============                                                                         |  17%
| Ah! That's what we wanted. But, what happens if we give my_vector a `dim` attribute? Let's
| give it a try. Type dim(my_vector) <- c(4, 5).
| It's okay if that last command seemed a little strange to you. It should! The dim() function
| allows you to get OR set the `dim` attribute for an R object. In this case, we assigned the
| value c(4, 5) to the `dim` attribute of my_vector.

> dim(my_vector)
[1] 4 5

Another way to see this is by calling the attributes() function on my_vector. Try it now.

> attributes(my_vector)
$dim
[1] 4 5

| Just like in math class, when dealing with a 2-dimensional object (think rectangular table),
| the first number is the number of rows and the second is the number of columns. Therefore, we
| just gave my_vector 4 rows and 5 columns.

| But, wait! That doesn't sound like a vector any more. Well, it's not. Now it's a matrix. View
| the contents of my_vector now to see what it looks like.

> my_vector
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20

| Now, let's confirm it's actually a matrix by using the class() function. Type class(my_vector)
| to see what I mean.

> class(my_vector)
[1] "matrix" "array" 

We should store it in a new variable that helps us
| remember what it is. Store the value of my_vector in a new variable called my_matrix.

> my_matrix <- my_vector


A way to make the same matrix from scratch:

> my_matrix2 <- matrix(1:20, nrow = 4, ncol = 5)

| Finally, let's confirm that my_matrix and my_matrix2 are actually identical. The identical()
| function will tell us if its first two arguments are the same. Try it out.

> identical(my_matrix, my_matrix2)
[1] TRUE

Let's start by creating a character vector containing the names of our patients -- Bill, Gina,
| Kelly, and Sean. Remember that double quotes tell R that something is a character string.
| Store the result in a variable called patients.
> patients <- c("Bill", "Gina", "Kelly", "Sean")

| Keep working like that and you'll get there!
  
  Now we'll use the cbind() function to 'combine columns'. Don't worry about storing the result
| in a new variable. Just call cbind() with two arguments -- the patients vector and my_matrix.

> cbind(patients, my_matrix)
patients                       
[1,] "Bill"   "1" "5" "9"  "13" "17"
[2,] "Gina"   "2" "6" "10" "14" "18"
[3,] "Kelly"  "3" "7" "11" "15" "19"
[4,] "Sean"   "4" "8" "12" "16" "20"

| Great job!
  
  | Something is fishy about our result! It appears that combining the character vector with our
| matrix of numbers caused everything to be enclosed in double quotes. This means we're left
| with a matrix of character strings, which is no good.

| If you remember back to the beginning of this lesson, I told you that matrices can only
| contain ONE class of data. Therefore, when we tried to combine a character vector with a
| numeric matrix, R was forced to 'coerce' the numbers to characters, hence the double quotes.

| This is called 'implicit coercion', because we didn't ask for it. It just happened. But why
| didn't R just convert the names of our patients to numbers? I'll let you ponder that question
| on your own. 

we're still left with the question of how to include the names of our patients in the
| table without destroying the integrity of our numeric data. Try the following -- my_data <-
| data.frame(patients, my_matrix)

> my_data
  patients X1 X2 X3 X4 X5
1     Bill  1  5  9 13 17
2     Gina  2  6 10 14 18
3    Kelly  3  7 11 15 19
4     Sean  4  8 12 16 20


 It looks like the data.frame() function allowed us to store our character vector of names
| right alongside our matrix of numbers. That's exactly what we were hoping for!| Behind the scenes, the data.frame() function takes any number of arguments and returns a
| single object of class `data.frame` that is composed of the original objects.

>  class(my_data)
[1] "data.frame"

| Since we have six columns (including patient names), we'll need to first create a vector
| containing one element for each column. Create a character vector called cnames that contains
| the following values (in order) -- "patient", "age", "weight", "bp", "rating", "test".


> cnames <- c("patient", "age", "weight", "bp", "rating", "test")

> colnames(my_data) <- cnames

> my_data
  patient age weight bp rating test
1    Bill   1      5  9     13   17
2    Gina   2      6 10     14   18
3   Kelly   3      7 11     15   19
4    Sean   4      8 12     16   20

| Excellent job!

