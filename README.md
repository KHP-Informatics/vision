# vision
Code for the VISION project (violence, health and society)

1. 'test.csv' and 'train.csv' were generated from 'emotional_physical.csv'
2. 'test2.csv' and 'train2.csv' were genderated from 'potentially_abuse_V2.csv' applied for sentence level classification. If label=1, means certain sentence include words that suggest the existence of violence behavior. label = 0, indicates no violence or not sure whether there exists violence.
4. The unsupervised learning methods applied the emotional and physical violence dataset (one post as the analyze unit).
5. The supervised and CNN RNN applied the violence dataset (one sentence as the analyze unit).
   Decision Tree Classifier (>85%) performs better than other algorithms. 

 
 Notes:
 (1) potentially_abuse_V2.csv was mannually labeled through single sentence of subbredit "domesticviolence"
 (2) the role of a user uncovered from certain sentence was dropped.
