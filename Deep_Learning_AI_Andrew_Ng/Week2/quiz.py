import numpy as np

a = np.random.randn(2,2,3) # a.shape = (12288, 150)

print(a.reshape(2*2*3,1))
print(a.shape)
print(help('reshape'))