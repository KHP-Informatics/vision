# Original of this package (Building off of the tradition of probabilistic topic models, such as the Latent Dirichlet Allocation (LDA) (Blei et al. 2003), the
# Correlated Topic Model (CTM) (Blei and Lafferty 2007))

# 1. read.csv to input the data
#install.packages("quanteda")
# install the following packages as necessary
#install.packages("quanteda")

library(lda)
library(slam)
library(stm)
library(stringr)

library(quanteda)
library(tm)
library(stopwords)

# Assume you have a corpus object called "corpus"

# Retrieve the English stopwords
stop_words <- stopwords("english")



data <- read.csv("/Users/lilifang/KCL/KCL_Angus/RE-STAR-Angus-Susie/All interviewees responses and the corresponding representative words_withoutNONE_updatedV17.csv",header=TRUE,sep=",",na.strings = NULL)
summary(data)
dim(data)
#removing the pattern indicating a line break
data$response <- gsub(pattern = "\n", replacement = " ", x = data$new_response)
#tokenization & removing punctuation/numbers/URLs etc.
tokens <- data$response %>%
  tokens(what = "word",
         remove_punct = TRUE,
         remove_numbers = TRUE,
         remove_url = TRUE) %>%
  tokens_tolower()

# tokens_remove(stopwords("english")
#applying relative pruning
dfm <- dfm_trim(dfm(tokens), min_docfreq = 0, max_docfreq = 1, 
                docfreq_type = "prop", verbose = TRUE)

dim(dfm)

topfeatures(dfm, n = 20, scheme = "docfreq")

#dfm <- dfm_remove(dfm, c("um", "oh", "okay", "mhm","ah","uh","yes","get",'yep',"yeah","no","hm","wow",'.','?','-','--',':','mm','Mm','Oop'))
dfm_stm <- convert(dfm, to = "stm")


library("stm")
model <- stm(documents = dfm_stm$documents,
             vocab = dfm_stm$vocab, 
             K = 10,
             verbose = TRUE)

plot(model,n=10)

labelTopics(model,topics = c(1:5), n=10)

#Save top 20 features across topics and forms of weighting
labels <- labelTopics(model, n=10)
labels


#only keep FREX weighting
topwords <- data.frame("features" = t(labels$frex))
#assign topic number as column name
colnames(topwords) <- paste("Topics", c(1:10))
#Return the result
topwords[1:5]

theta <- make.dt(model)
theta[1:10,1:11]
theta
dim(theta)
library(openxlsx)
path = "/Users/lilifang/KCL/KCL_Angus/RE-STAR-Angus-Susie/"
write.xlsx(theta,paste0(path,"STM_theta_values_topic10_read_updatedV4.xlsx"))


#install.packages("wordcloud")
library(wordcloud)
cloud(model, topic= 1, scale=c(2,.25), colors=c("cornflowerblue", "darkorange","black"))
cloud(model, topic= 2, scale=c(2,.25), colors=c("cornflowerblue", "darkorange","black"))
cloud(model, topic= 3, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))
cloud(model, topic= 4, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))
cloud(model, topic= 5, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))
cloud(model, topic= 6, scale=c(2,.25), colors=c( "cornflowerblue", "darkorange","black"))
cloud(model, topic= 7, scale=c(2,.25), colors=c( "cornflowerblue", "darkorange","black"))
cloud(model, topic= 8, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))
cloud(model, topic= 9, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))
cloud(model, topic= 10, scale=c(2,.25), colors=c("chartreuse", "cornflowerblue", "darkorange","black"))


