x <- matrix(c(4,7,3,8,9,2),nrow = 2)
x
x[2,2]
x[,2]

number_1 <- rnorm(80,mean=0,sd=1)
number_1

mat_1 <- matrix(number_1,nrow = 20,ncol = 4)
mat_1

df_1 <- data.frame(mat_1)
df_1

names(df_1) <- c("var1","var2","var3","var4")

head(df_1)
plot(df_1)

x <- seq(1,100,by=2.5)
x
x[5]
x[4:10]
l <- length(x)
x[l]
x[length(x)-1]

x[-2]

idx <- c(1,4,6)
x[idx]
x[-idx]
x>20

(x<=10) | (x>30)

x[x<10|x>30]

x2 <- numeric(length(x))
x2
x2[x<=30] <- 1
x2
x2[(x>30)&(x<70)] <- 2
x2[x>70] <- 3
x2

#alternative
library(car)
x2 <- recode(x,"0:30=1; 30:70=2; else=3")
x2

summary(x)
sum(x)
consum(x)
rec(x)
sort(x,decreasing = T)
sample(x,10)

#data frame
test <- dara.frame(A0c(1,2,3),B=c("plot1","plot2","plot3"))
test
test[,1]
test[,"A"]
test$A

#Testcomment

df <- data.frame(plot="location_name_1",measure1=runif(100)*1000,measure2=round(runif(100)*100),
                 value=rnorm(100,2,1),ID=rep(LETTERS,100))

head(df)

df_2 <- data.frame(plot="location_name_2",measure1=runif(50)*1000,measure2=round(runif(50)*10),
                 value=rnorm(50),ID=rep(LETTERS,50))
df <- rbind(df,df_2)

summary(df)
str(df)
head(df)
mode(df)

df[,c("plot","measure1")]

r1 <- raster(nrows=100,ncols=100)
r1[] <- df$measure2[1:1000]

r2 <- raster(nrows=100,ncols=100)
r2[] <- df$measure1[1:1000]

r12 <- stack(r1,r2)
r12$new <- r12[[1]]*r12[[2]]^2
r12$hans <- rnorm(50,mean=13,sd=19)

r1d <- as.data.frame(r12)


