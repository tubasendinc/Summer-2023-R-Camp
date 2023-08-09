###################### 
## Summer 2023 - R Workshop - Day 1
######################

print('Hello, world!')
print(Hello, world!) # Why do we get an error message?

print(0) # We do not get the same error message here. Why?

# All text after the pound sign, "#," is considered a comment

###########
## Objects
###########

# Use class() to identify the class of an object
class(1)
class('Characters are often called strings')
class(TRUE)

# knowing the class of the objects you are working with is essential

# changing data between types is called "coercion" 
as.numeric('1')
as.character(1)
as.logical('TRUE')
as.logical(as.numeric('1'))

###################
## Data Structures
###################

# Vectors are the fundamental data structure in R
num_vect <- c(1,0,1)
is.vector(num_vect)

typeof(num_vect)
is.numeric(num_vect)
sum(num_vect, num_vect)
num_vect + num_vect

# lists are not vectorized by default because of they can contain
# heterogeneous data types
list.1 <- list(1, 0 , 1)
list.2 <- list(2, 3, 2)
# typeof() evaluates the list object rather than the elements of the list
typeof(list.1)
is.numeric(list.1)
# vectorized functions don't work on lists
sum(list.1, list.2)
list.1 + list.2

# A matrix contains vectors all of the same type
num.mat <- matrix(data = 1:15, nrow = 5, ncol = 3)
num.mat

# an array is a matrix that can have more than two dimensions.
# same matrix as above
array(1:15, c(5,3))
# now we add a dimension
array(1:15, c(5,3,2))

# Data frames are an nxm series of vectors, and can contain vectors of different
# data types
animals<-data.frame(animal=c('cat', 'dog', 'pig'),
               n=c(3,2,5),
               toes=c(5,5,4))
# this means vectorized functions work on data frame columns
sum(animals$n)
animals$n + 1

# lists can contain anything, including data frames or other lists
my.list <- list(list.1, 'cat', animals, 1)
my.list[3][[1]]$animal

##############
## Operators
##############

# Arithmetic
2+2 # addition
2-2 # subtraction
2*2 # multiplication
2/2 # division
2%%2 # Modulus, remainder
2^2 # Exponentiation

# Logical
2>2 # greater than
2<2 # less than
2<=2 # less than or equal to
2>=2 # greater than or equal to
2==2 # exactly equal to
2!=2 # not equal to

# some additional functions
sqrt(11) # square root
log(11) # computes natural logarithms
exp(11) # calculates the exponentiation of y

# Assignment
x <- 2 # Generally the preferred assignment operator
x = 2
2 <- x # Object names can contain a number but they cannot start with a number
MID <- 1
Mid <- 0
miD <- 1 #R is case sensitive, MID, Mid, and miD are different objects

rm(MID) # rm() command removes an object
print(MID)

object <- 8+2 #an object that contains one value, 10
print(object)

object - 5 # subtracting 5 from object 
new_object <- object - 5 # creating a new object based on the subtraction of 5 from object

1:10 # create a sequence

seq(10) # same as 1:10

seq(1, 10, by = 2) # by increments of 2

rep(1:3, 2) # repeat 1 to 3 twice

'cat' %in% c('cow','cat','dog','chicken') # test if an element is in a vector

x <- 1:10 # Storing the sequence in a vector
x*2 # We can use basic arithmetic to transform vectors
x2 <- x*2 # and we can save it in a separate vector
xdum <-  ifelse(x > 5,0, 1) # creating a vector that scores 1 if x is greater than 5 and 0 if else
  
# How to seek more information about functions

?seq # provides access to documentation pages which will appear in the tab
help(seq) # provides access to documentation pages which will appear in the tab
example(seq) # illustrates how the functions work


