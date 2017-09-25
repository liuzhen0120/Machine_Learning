def NBAccuracy(features_train, labels_train, features_test, labels_test):
    """compute the accuracy of your Naive Bayes classifier"""
    from sklearn.naive_bayes import GaussianNB
    clf = GaussianNB()
    clf.fit(features_train, labels_train)
    pred = clf.predict(features_test)

    from sklearn.metrics import accuracy_score
    accuracy = accuracy_score(pred, labels_test)
    return accuracy
