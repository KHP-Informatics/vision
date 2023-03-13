library(data.table)
library(udpipe)
## Annotate text with parts of speech tags
data <- read.csv("/Users/lilifang/KCL/KCL_Angus/RE-STAR-Angus-Susie/All interviewees responses_withoutNONE_updatedV17_with_BTM_b.csv",header=TRUE,sep=",",na.strings = NULL)
#data <- data[0:1000,]
data<- data[, c("ids", "new_response")]
dim(data)
data<- data[1:13435,]
#head(data, n = 5)
anno <- data.frame(doc_id = data$ids, text = data$new_response, stringsAsFactors = FALSE)
anno <- udpipe(anno, "english", trace = 500)



biterms <- as.data.table(anno)
biterms <- biterms[, cooccurrence(x = lemma,
                                  relevant =  nchar(lemma) > 2 & !lemma %in% stopwords("en"), 
                                  skipgram = 3),
                   by = list(doc_id)]

library(BTM)
set.seed(1234)
traindata <- subset(anno,  !lemma %in% stopwords("en") & nchar(lemma) > 2) 
traindata <- traindata[, c("doc_id", "lemma")]
model     <- BTM(traindata, biterms = biterms, k = 10, iter = 500, background = TRUE, trace = 100)

library(textplot)
library(ggraph)
plot(model, top_n = 20,
     title = "BTM model", subtitle = "ASD, ADHD, ASD.ADHD",
     labels = c("Topic 0","Topic 1", "Topic 2", "Topic 3", 
                "Topic 4", "Topic 5", 
                "Topic 6", "Topic 7",
                "Topic 8", "Topic 9","Topic 10"))

library(tidyverse)
data <- drop_na(data)
dim(data)

topicterms <- terms(model, top_n = 20)
topicterms
