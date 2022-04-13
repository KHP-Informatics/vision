# VISION dataset workshop
# 26-27 April 2022

## Day 1 - datasets and Measurement Framework

### Morning

1. CRIS - Giouliana
2. Police - Les and Ruth
3. Solicitors - Lilly and Leonie

### Afternoon

1. The Measurement Framework - Sally
2. Representing the datasets in the Measurement Framework - all


## Day 2 - NLP tutorial

- This tutorial day will comprise a few talks on NLP toics, and a working example of a simple NLP application.
- The practicals will use Python. If you are familiar with Python, you can download the material and use it on your own machine.
- However, you do not need to do this: all of the Python files can be run in your web browser using [Google Colab](https://colab.research.google.com/), a web-based tool for running Python code. We will provide links for you to open the code in Colab.

### Presentations 1 - introduction to NLP

TODO - link to presentations

### Practical 1 - data labelling

- In our teaching example we will build a simple sentence classifier
- We will classify sentences from the domestic violence subreddit, as either:
    - mentioning violence (label = 1) or
    - not mentioning violence (label = 0)
- Our data (sentences) is in a CSV file, which can be opened in Excel, or edited directly in your web browser
- Open the file: [title](./XXXXXX)
- Read through it, adding a 1 or a 0 in column 1, according to whether you think the sentence mentions violence or not

### Presentations 2 - representing language

TODO - link to presentations

### Practical 2 - embeddings

TODO short demonstration of how to run Python code notebooks, using Colab.

TODO - link to practical colab

### Presentations 3 - supervised learning and evaluation

TODO - link to presentations

### Practical 3 - supervised learning

- We will first split our data in to a training set and a test set

TODO - code for above

TODO - link to practical colab

### Presentations 4

- summary - challenges and opportunities
TODO - link



### Old material

1. 'test.csv' and 'train.csv' were generated from 'emotional_physical.csv'
2. 'test2.csv' and 'train2.csv' were genderated from 'potentially_abuse_V2.csv' applied for sentence level classification. If label=1, means certain sentence include words that suggest the existence of violence behavior. label = 0, indicates no violence or not sure whether there exists violence.
3. Try to focus on "NLP_supervised learning.ipynb" first rather than other notebooks.
4. "sampled_100_emotional_physical.xls" is the posts level coding example, add one colunm for yourself to annotate them based on your own judgement.
5. "sampled_100_potentially_abuse.xls" is the sentence level coding example, add one colunm for yourself to annotate them based on your own judgement.
7. The unsupervised learning methods applied the emotional and physical violence dataset (one post as the analyze unit).
8. The supervised and CNN RNN applied the violence dataset (one sentence as the analyze unit).
   Decision Tree Classifier (>85%) performs better than other algorithms. 

 
 Notes:
 (1) potentially_abuse_V2.csv was mannually labeled through single sentence of subbredit "domesticviolence"
 (2) the role of a user uncovered from certain sentence was dropped.
