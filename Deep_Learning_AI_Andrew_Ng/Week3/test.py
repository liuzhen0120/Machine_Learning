import numpy as np

A = np.random.randn(4,3)
B = np.sum(A, axis=0, keepdims=True)
a = np.random.seed(1)
print(a)
print(B.shape)