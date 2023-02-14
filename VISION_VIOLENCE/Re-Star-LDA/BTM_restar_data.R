## Get list of packages in the NLP/Machine Learning Task Views
# https://www.r-bloggers.com/2020/04/biterm-topic-modelling-for-short-texts/  
## Get list of packages in the NLP/Machine Learning Task Views

#install.packages(“tidyverse”)
#install.packages("data.table")

library(data.table)
library(udpipe)
## Annotate text with parts of speech tags
data <- read.csv("/Users/lilifang/KCL/KCL_Angus/RE-STAR-Angus-Susie/all_respones_for_all_interviewees_respones_LIWC_words_V2.csv",header=TRUE,sep=",",na.strings = NULL)
data <- data[, c("ids", "response")]
library(tidyverse)
data <- drop_na(data)
dim(data)

anno <- data.frame(doc_id = data$ids, text = data$response, stringsAsFactors = FALSE)
anno <- udpipe(anno, "english", trace = 100)
colnames(anno) 
head(anno)


biterms <- as.data.table(anno)
colnames(biterms)
head(biterms)

biterms <- biterms[, cooccurrence(x = lemma,
                                   relevant = upos %in% c("NOUN", "ADJ", "VERB") & 
                                     nchar(lemma) > 2 & !lemma %in% stopwords("en"),
                                   skipgram = 3),
                    by = list(doc_id)]
library(BTM)
library(udpipe)
library(data.table)
library(stopwords)
set.seed(123456)
traindata <- subset(anno, upos %in% c("NOUN", "ADJ", "VERB") & !lemma %in% stopwords("en") & nchar(lemma) > 2)
head(traindata)
dim(traindata)
traindata <- traindata[, c("doc_id","lemma")]
traindata$lemma <- na.omit(traindata$lemma)
dim(traindata)
# Subset biterms to include only terms that are present in traindata
biterms_clean <- na.omit(biterms)
dim(biterms_clean)
# Train the BTM model using the subsetted biterms
model1 <- BTM(traindata, biterms = biterms_clean, k = 10, iter = 2000, background = TRUE, trace = 100)


## Inspect the model - topic frequency + conditional term probabilities
model1$theta

topicterms <- terms(model1, top_n = 15)
topicterms

library(openxlsx)
path = "/Users/lilifang/KCL/KCL_Angus/RE-STAR-Angus-Susie/R-plots/"
write.xlsx(topicterms, paste0(path, "topicterms.xlsx"))

#install.packages("textplot")
library(textplot)
library(ggraph)
plot(model1, top_n = 15,
     title = "BTM model")

