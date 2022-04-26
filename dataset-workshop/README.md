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
- However, you do not need to do this: all of the Python files can be run in your web browser using [Google Colab](https://colab.research.google.com/), a web-based tool for running Python code. We will provide links for you to open the code in Colab. If you want to know nore about Colab, we have provided some information [here](./more-abnout-colab.md)

### Presentations 1 - introduction to NLP

- [Introduction](./presentations/01-nlp-intro.pdf)
- [NLP methods](./presentations/02-nlp-methods.pdf)
- [Steps in an NLP study, part A](./presentations/03-steps-in-an-nlp-study-A.pdf)
- [Steps in an NLP study, part B](./presentations/04-steps-in-an-nlp-study-B.pdf)


### Practical 1 - data labelling

- In our teaching example we will build a simple sentence classifier
- We will classify sentences from the domestic violence subreddit, as either:
    - mentioning violence (label = 1) or
    - not mentioning violence (label = 0)
- We have already labelled some of the data
- However, there are five portions that have not yet been labelled
- You need to complete the labelling of these portions
- Each of the five portions needs to be labelled by two independent people
- We can then compare the labels to compute agreement
- Our data (sentences) for labelling is in a CSV file, which can be opened in Excel or other swpreadsheet (or edited directly in your web browser if you have a github account)
- Each person will be allocated a file to download and label
- You can download your allocated file from this google drive: [files to download](https://drive.google.com/drive/folders/1cl2cjpyjwRD3Hl-3yor7N74wfK3FvBvR)
- Open it in excel or some other spreadsheet
- Read through it, adding a 1 or a 0 in column 1, according to whether you think the sentence mentions violence or not
- When you have labelled it, save it as a CSV file, and email to [Lifang](mailto:lifang.li@kcl.ac.uk)


### Presentations 2 - representing language

- [Representing language](./presentations/05-nlp-representation.pdf)

### Practical 2 - embeddings

- We will run this as a demo, you do not need to do it themselvesrun this code yourself
- [Embeddings (and how to use Colab)](https://githubtocolab.com/KHP-Informatics/vision/blob/main/dataset-workshop/practicals/embeddings.ipynb)

### Presentations 3 - supervised learning and the development cycle

- [Classification and sequence learning](./presentations/06-classification-and-sequence-learning.pdf)
- [The development cycle](./presentations/07-development-cycle-and-evaluation.pdf)

### Practical 3 - supervised learning

- [Practical notebook](https://githubtocolab.com/KHP-Informatics/vision/blob/main/dataset-workshop/practicals/NLP_supervised_learning.ipynb)

### Concluding and next steps


