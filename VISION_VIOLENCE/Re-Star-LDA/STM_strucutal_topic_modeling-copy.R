
#https://cran.r-project.org/web/packages/stm/vignettes/stmVignette.pdf
#https://burtmonroe.github.io/TextAsDataCourse/Tutorials/IntroSTM.nb.html
# STM topic modeling: Structural Topic Models 

# Original of this package (Building off of the tradition of probabilistic topic models, such as the Latent Dirichlet Allocation (LDA) (Blei et al. 2003), the
# Correlated Topic Model (CTM) (Blei and Lafferty 2007))

# 1. read.csv to input the data
#install.packages("quanteda")
# install the following packages as necessary
library(lda)
library(slam)
library(stm)


data <- read.csv("/Users/lilifang/KCL/KCL_Angus/RE-STAR-Angus-Susie/all_respones_for_all_interviewees_respones_LIWC_words_V2.csv",header=TRUE,sep=",",na.strings = NULL)
summary(data)

# Preprocessing within the stm package
processed <- textProcessor(data$response, metadata = data)
out <- prepDocuments(processed$documents, processed$vocab, processed$meta)
head(out)
names(out)
names(processed)
docs <- out$documents
vocab <- out$vocab
meta <-out$meta

# Modeling without metadata structure

# Spectral initialization is advised by the authors
#    Should replicate exactly under spectral initialization
#
# This takes about 30 seconds.
data.fit.nometa <- stm(documents = docs, 
                             vocab = vocab,
                             K = 10,
                             max.em.its = 75,
                             data = meta,
                             init.type = "Spectral")



labelTopics(data.fit.nometa)
#We can get an overview of the distribution of these topics by plotting the fit object:
plot(data.fit.nometa,n=6)

#install.packages("wordcloud")
library(wordcloud)
cloud(data.fit.nometa, topic= 1, scale=c(2,.25), colors=c("cornflowerblue", "darkorange","black"))
cloud(data.fit.nometa, topic= 2, scale=c(2,.25), colors=c("cornflowerblue", "darkorange","black"))
cloud(data.fit.nometa, topic= 3, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))
cloud(data.fit.nometa, topic= 4, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))
cloud(data.fit.nometa, topic= 5, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))
cloud(data.fit.nometa, topic= 6, scale=c(2,.25), colors=c( "cornflowerblue", "darkorange","black"))
cloud(data.fit.nometa, topic= 7, scale=c(2,.25), colors=c( "cornflowerblue", "darkorange","black"))
cloud(data.fit.nometa, topic= 8, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))
cloud(data.fit.nometa, topic= 9, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))
cloud(data.fit.nometa, topic= 10, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))


labelTopics(data.fit.nometa, c(1,2,3,4,5,6,7,8,9,10))




