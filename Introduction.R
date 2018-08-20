# Install R and R Studio

# Assigment oprators
x <- "Hello world!" # The most used
y = "Hello world!" # Declare a variable on a different scope
"Hello world!" -> z
# For our purposes all previous assigment operators do the same thing

# Implicit printing
print(x)
x

# Creating variables
l <- TRUE # Create a logical value
i <- 123L # Create an integer variable by setting its value to an integer and using capital letter L as a suffix
n <- 123.45 # Create a numerical variable
c <- # Create a character vector by setting its value to a string o characters surrounded by double quotes.
  
# Displaying variables
l
i
n
c

# Creating a function
f <- function(x) { x + 1 }

# Invoke the f function
f(1)

# Creating a numerical vector
v1 <- c(1, 2, 3)
v1

# Creating a vector with logical values
v2 <- c(TRUE, TRUE, FALSE)
v2

# Creating a sequence
s <- 1:5
s

# Creating a matrix
m <- matrix(data = 1:6, nrow = 2, ncol = 3)
m

# Creating an array of 3 dimension
a <- array(data = 1:8, dim = c(2,2,2))
a

# Creating an array of 3 dimension with logical values
a <- array(data = c(TRUE,FALSE,TRUE), dim = c(2,2,2))
a # Observe how values are filled up into the matrix

# Creating a list of different data types
l <- list(TRUE, 1L, 2.34, "abc")

# Creating a set of factors
# This is similar to an enumeration in the C-like languages
factors <- factor(c("Male", "Female", "Male", "Male", "Female"))
# Get a distinct list of name values in alphabetical order. The order in whic these name values occur is the order that maps to backing integer. 
levels(factors)
unclass(factors)

# Data frame
df <- data.frame(
  Name = c("Cat", "Dog", "Cow", "Pig"),
  HowMany = c(5,10,15,20),
  IsPet = c(TRUE, TRUE, FALSE, FALSE)
)
df

# Indexing data frames by row and column
df[1, 2] # Get the second value fo the first row

# Indexing data frames by row
df[1, ] # Get the first row

# Indexing data frames by column
df[, 2] # Get the second column
df[["HowMany"]] # If we know the names
df$HowMany # With sintaxis shortcut 
# These 3 previous ways are the same

# One of the most powerful language features for querying data in a data frame is called subsetting.
# Subsetting allow us to slice and dice data in very flexible ways.
# First we can pass a vector of integers indicating each row we want returned from the data frame into the rows argument of the index operator
# and it will return the specified rows
df[c(2, 4 ), ] # Get rows 2 and 4
df[c(2:4 ), ] # Get rows from 2 to 4
df[c(TRUE, FALSE, FALSE, TRUE), ] # Get the indicated rows

# Give the data the 2 following lines do the samme thig
df[df$IsPet == TRUE, ] # Get row passing a predicate
df[c(TRUE, TRUE, FALSE, FALSE), ] # df$IsPet == TRUE returns c(TRUE, TRUE, FALSE, FALSE)

# Passing another predicate
df[df$HowMany > 10, ]

# Filtering in some way
df[df$Name %in% c("Cat", "Cow"), ]

# Vectorized operations
1 + 2 # This will return a vector of a single element which is the result of the operation

# Summing vectors
c(1,2,3) + c(4,5,6) # Vectorized operator

# Named arguments vs. ordered arguments
m <- matrix(data = 1:6, nrow = 2, ncol = 3)
n <- matrix(1:6, 2, 3)
m == n # Equality operator is also vectorized
# Comparing matrixes
identical(m, n)

# Install packages that extends the functionality of the language (command line)
install.packages("ggplot2")

# Loading libraries 
library(ggplot2)
# Ver documentacion del paquete buscando en google ggplot2

# There are other features like the following
# 1.- Control structures: if, then, else, statements, for loops, while loops, and switched,
# 2.- Mathematical, relational, and logical operators
# 3.- String manipulation functions with regular expressions
