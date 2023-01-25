
print('APMDL Ensemble Classification start')

import time
import numpy as np
from pathlib import Path


g2v_embd_input = "./g2v_embeddings_train.txt"
g2v_label_input = "./g2v_labels_train.txt"
g2v_embd_predict = "./apm_output/g2v_embeddings_pred.txt"

t0 = time.time()
#g2v_names = []
#with open(g2v_name_input, 'r') as file1:
#    g2v_names = file1.read().splitlines()

g2v_string = ''
with open(g2v_embd_input, 'r') as file2:
    g2v_string = file2.read().replace('\n', '')

g2v_string = g2v_string.replace('[', '')
g2v_string = g2v_string.replace(']', '')
g2v_embeddings_train = np.fromstring(g2v_string, sep=' ').reshape(-1, 128)

g2v_labels = []
with open(g2v_label_input, 'r') as file3:
    g2v_labels = file3.read().splitlines()

t1 = time.time()
print(('Load time: %.2fs' % (t1 - t0)).lstrip('0'))
print('shape:', g2v_embeddings_train.shape)

#file1.close()
file2.close()
file3.close()


from sklearn import model_selection
from sklearn.metrics import accuracy_score, classification_report,confusion_matrix
from sklearn.preprocessing import LabelEncoder

from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier, AdaBoostClassifier, GradientBoostingClassifier, VotingClassifier
from xgboost import XGBClassifier

label_encoder = LabelEncoder()
label_encoder = label_encoder.fit(g2v_labels)
label_encoded_y = label_encoder.transform(g2v_labels)

seed = 12345
test_size = 0.2
X_train, X_test, y_train, y_test = model_selection.train_test_split(g2v_embeddings_train, label_encoded_y, test_size=test_size, random_state=seed)
kfold = model_selection.KFold(n_splits=10)

estimators = []
estimators.append(('knc', KNeighborsClassifier()))
estimators.append(('svc', SVC()))
estimators.append(('dtc', DecisionTreeClassifier()))
estimators.append(('rfc', RandomForestClassifier()))
estimators.append(('abc', AdaBoostClassifier()))
estimators.append(('gbc', GradientBoostingClassifier()))
estimators.append(('xgb', XGBClassifier()))

t0 = time.time()
ensemble1 = VotingClassifier(estimators)
results = model_selection.cross_val_score(ensemble1, X_train, y_train, cv=kfold)
t1 = time.time()
print(('cross_val_score time: %.2fs' % (t1 - t0)).lstrip('0'))
print(results.mean())

t0 = time.time()
ensemble1.fit(X_train, y_train)
t1 = time.time()
print(('Ensemble1 time: %.2fs' % (t1 - t0)).lstrip('0'))
print("Accuracy on training set: {:.3f}".format(ensemble1.score(X_train, y_train)))
print("Accuracy on validation set: {:.3f}".format(ensemble1.score(X_test, y_test)))

t0 = time.time()
y_pred = ensemble1.predict(X_test)
t1 = time.time()
print(('Predict time: %.2fs' % (t1 - t0)).lstrip('0'))
print(confusion_matrix(y_test, y_pred))
print(classification_report(y_test, y_pred))


ensemble2 = VotingClassifier(estimators)

t0 = time.time()
ensemble2.fit(g2v_embeddings_train, label_encoded_y)
t1 = time.time()
print(('Ensemble2 time: %.2fs' % (t1 - t0)).lstrip('0'))
print("Accuracy on training set: {:.3f}".format(ensemble2.score(g2v_embeddings_train, label_encoded_y)))
print("Accuracy on validation set: {:.3f}".format(ensemble2.score(X_test, y_test)))

t0 = time.time()
y_pred = ensemble2.predict(X_test)
t1 = time.time()
print(('Predict time: %.2fs' % (t1 - t0)).lstrip('0'))
print(confusion_matrix(y_test, y_pred))
print(classification_report(y_test, y_pred))

t0 = time.time()
g2v_string2 = ''
with open(g2v_embd_predict, 'r') as file4:
    g2v_string2 = file4.read().replace('\n', '')

g2v_string2 = g2v_string2.replace('[', '')
g2v_string2 = g2v_string2.replace(']', '')
g2v_embeddings_pred = np.fromstring(g2v_string2, sep=' ').reshape(-1, 128)

t1 = time.time()
print(('Load time: %.2fs' % (t1 - t0)).lstrip('0'))
print('shape:', g2v_embeddings_pred.shape)

file4.close()


t0 = time.time()
y_pred = ensemble2.predict(g2v_embeddings_pred)
t1 = time.time()
print(('Predict time: %.2fs' % (t1 - t0)).lstrip('0'))

print(np.array(np.unique(y_pred, return_counts=True)).T)
print(y_pred)

print('APMDL Ensemble Classification end')

