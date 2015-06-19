#r_intro.R
#01-29-14

#speedy intro to r 
	# (you can comment a line with hashes #)

#vectors
1:4
#can use c() to concatanate things together
c(1,1,2,4)
c(1,1,2:4)
x<-c(1,1,2,4)
x
length(x)
class(x)	#means 'a vector composed of numeric values'

#logicals
x==2		#get TRUEs and FALSEs
x>2
x<3
x>=4	#more than or equal to

#subsetting vectors : subset with sq brackets
x[1]
x[2]
x[x>2] #can use logicals to subset, very handy

#matrices
y<-matrix(1:4,2,2)
class(y)
nrow(y)
ncol(y)
length(y)
#subsetting matrices
y[1,2] # row number, col number
y[,1]  #first column
y[2,]	 #first row

#list: how we take a lot of different things and combine them
myList<-(x,y)
myList
class(myList)
str(myList)	#useful for looking at lists
#subset lists using double sq brackets
myList[[1]]
myList[[2]]

#array = N dimensional matrix
z<-array(1:8,dim=c(2,2,2))
z
class(z)
dim(z)
dimnames(z) #has no dimnames
#let's set some, needs to be a list
dimnames(z)<-list(c("hello","goodbye"),c("beatles","metallica"),c("yes","no"))
z
dimnames(z)
#so dimnames needs to be manipulated like a list... because it is a list
dimnames(z)[[1]] #dimnames for 'rows'	(i.e. first dimension)
dimnames(z)[[2]] #dimnames for 'columns' (i.e. second dimension)
dimnames(z)[[3]] #dimnames for third dimension of array

#function - how we do things in R
myFunction<-function(x,y,z=2){
	#stuff happens to the input in here
	res<-x+y
	res<-res/z
	res
	}
#and then we run the function
myFunction(x=1,y=2)
myFunction(x=2,y=2)
myFunction(x=2,y=1)
myFunction(x=1,y=1)
#arguments that have default settings (like z) don't have to be given
	#but if you do give them, that changes the function
myFunction(x=1,y=2,z=4)
myFunction(x=1,y=2,z=6)



