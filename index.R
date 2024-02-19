# Stat-295 
getwd()

mydice <- 1:6
mydice-c(2,3)
mydice


install.packages(c("devtools","rocygen2","testthat","rmarkdown","pkgdown","purrr"))

usethis :: use_git_config(
  user.name="duzgunaliozdemir",
  user.email="ozdemir.duzgun@metu.edu.tr"
)

usethis:: create_github_token()

gitcreds::gitcreds_set()


data(iris)
head(iris)

?iris
class(iris$Sepal.Length)
class(iris$Species)
str(iris)


names(table(iris$Species))
summary(iris)

iris$Sepal.Length

iris[1,]

iris[, "Species"]

logicİndex <- iris[,"Petal.Length"]>5.5
logicİndex

iris[logicİndex,]

mean(iris$Sepal.Length)


#Functions

meanAndstd <- function(x){
  c(mean=mean(x), std=sd(x))
}


meanAndstd(iris$Sepal.Length)

Stats <- aggregate(Sepal.Length~Species, data=iris, FUN=meanAndstd)


#Visualization 

plot(iris$Sepal.Length, col=as.numeric(iris$Species), ylab="Sepal Length")
legend("topleft", legend=levels(iris$Species), pch=1:3)                   

boxplot(Sepal.Length~Species, data=iris, notch=T)

?boxplot()
