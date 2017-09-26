#!/usr/bin/python

""" 
    This is the code to accompany the Lesson 1 (Naive Bayes) mini-project. 

    Use a Naive Bayes Classifier to identify emails by their authors
    
    authors and labels:
    Sara has label 0
    Chris has label 1
"""
    
import sys
from time import time
sys.path.append("../tools/")
from email_preprocess import preprocess


### features_train and features_test are the features for the training
### and testing datasets, respectively
### labels_train and labels_test are the corresponding item labels
features_train, features_test, labels_train, labels_test = preprocess()




#########################################################
### your code goes here ###
from sklearn.naive_bayes import GaussianNB
from sklearn.metrics import accuracy_score
clf = GaussianNB()

print(time())
t0 = time()
clf.fit(features_train, labels_train)
time_1 = round(time() - t0, 3)
print("trainning time:" + str(time_1) + "s")
print(time())


print('-------------')
print(time())
t1 = time()
pred = clf.predict(features_test)
time_2 = round(time() - t1, 3)
print("prediction time:" + str(time_2) + "s")
print(time())
print('-------------')
accuracy = accuracy_score(pred, labels_test)
print('The accuracy is:', accuracy)


#########################################################
## Got prediction time larger that fit training time.


