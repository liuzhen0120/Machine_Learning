import numpy as np
a = np.arange(36).reshape(6,6)
b = a.reshape(36)[::7]
print(a)
print(b)