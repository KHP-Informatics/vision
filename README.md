# vision
Code for the VISION project (violence, health and society)

Before using this notebook, you can download your python, jupyter notebook and install them
If not, you may use the google service to run the codes: https://colab.research.google.com/ 

1. 'test.csv' and 'train.csv' were generated from 'emotional_physical.csv'
2. 'test2.csv' and 'train2.csv' were genderated from 'potentially_abuse_V2.csv' applied for sentence level classification. If label=1, means certain sentence include words that suggest the existence of violence behavior. label = 0, indicates no violence or not sure whether there exists violence.
3. Try to focus on "NLP_supervised learning.ipynb" first rather than other notebooks.
5. The unsupervised learning methods applied the emotional and physical violence dataset (one post as the analyze unit).
6. The supervised and CNN RNN applied the violence dataset (one sentence as the analyze unit).
   Decision Tree Classifier (>85%) performs better than other algorithms. 

 
 Notes:
 (1) potentially_abuse_V2.csv was mannually labeled through single sentence of subbredit "domesticviolence"
 (2) the role of a user uncovered from certain sentence was dropped.
