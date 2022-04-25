# VISION dataset workshop
# 26-27 April 2022

## Day 1 - Datasets and Measurement Framework

### Morning

1. CRIS - Giouliana
2. Police - Les and Ruth
3. Solicitors - Lilly and Leonie

### Afternoon

1. The Measurement Framework - Sally
2. Representing the datasets in the Measurement Framework - all


## Day 2 - NLP tutorial

- This tutorial day will comprise a few talks on NLP topics, and a working example of a simple NLP application.
- The practicals will use Python. If you are familiar with Python, you can download the material and use it on your own machine.
- However, you do not need to do this: all of the Python files can be run in your web browser using [Google Colab](https://colab.research.google.com/), a web-based tool for running Python code. We will provide links for you to open the code in Colab.

### Presentations 1 - introduction to NLP

[TODO Introduction](./presentations/XX)
[NLP methods](./presentations/02-nlp-methods.pdf)
[Steps in an NLP study, part A](./presentations/03-steps-in-an-nlp-study-A.pdf)
[Steps in an NLP study, part B](./presentations/04-steps-in-an-nlp-study-B.pdf)


### Practical 1 - data labelling

- In our teaching example we will build a simple sentence classifier
- We will classify sentences from the domestic violence subreddit, as either:
    - mentioning violence (label = 1) or
    - not mentioning violence (label = 0)
- Our data (sentences) is in a CSV file, which can be opened in Excel (or edited directly in your web browser if you have a github account)
- Open the file from the previoulsy downloaded zip file
- Read through it, adding a 1 or a 0 in column 1, according to whether you think the sentence mentions violence or not


- examples 1 to 800: sample-data-prepared.csv
- examples 801 - 820 with label removed in sample-data-to-label-1A.csv
- (each B file is a copy of the A file) sample-data-to-label-1B.csv
- 821 - 840 sample-data-to-label-2A.csv
- sample-data-to-label-2B.csv
- 841 - 860 sample-data-to-label-3A.csv
- sample-data-to-label-3B.csv
- 861 - 880 sample-data-to-label-4A.csv
- sample-data-to-label-4B.csv

- code to calcualate IAAs on the A and B files for each set
- code to combine all labelled datasets
- code to do 80:20 split

### Presentations 2 - representing language

[Representing language](./presentations/05-nlp-representation.pdf)

### Practical 2 - embeddings

We will run this as a demo, you do not need to do it themselvesrun this code yourself

TODO short demonstration of how to run Python code notebooks, using Colab.

TODO - link to practical colab

### Presentations 3 - supervised learning and the development cycle

[Classification and sequence learning](06-classification-and-sequence-learning.pdf)
[Representing languageThe development cycle](07-development-cycle-and-evaluation.pdf)

### Practical 3 - supervised learning

- We will first split our data in to a training set and a test set

TODO - code for above

TODO - link to practical colab

### Concluding abd next steps


