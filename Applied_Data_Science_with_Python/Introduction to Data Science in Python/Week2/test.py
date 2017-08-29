import pandas as pd
animals_1 = ['Tiger', 'Bear', 'Moose']
numbers_1 = [1, 2, 3]
animals_2 = ['Tiger', 'Bear', None]
numbers_2 = [1, 2, None]
# print(pd.Series(animals_1))
# print(pd.Series(numbers_1))
# print(pd.Series(animals_2))
# print(pd.Series(numbers_2))

sports = {
    "Archery": 'Bhutan',
    'Golf': 'Scotland',
    'Sumo': 'Japan',
    'Taekwondo': 'South Korea'
}
s = pd.Series(sports)
# print(s)
# print(s.index)
s = pd.Series(['Tiger', 'Bear', 'Moose'], index=['India', 'America', 'Canada'])
# print(s)

# overwrite
s = pd.Series(sports, index=['Golf', 'Sumo', 'Hockey'])
# for label, value in s.iteritems():
#     print(label, type(label))
#     print('----')
#     print(value, type(value))
s.loc['Hockey'] = 'Seeker'
s.loc['jianhan'] = 'Liu'
# print(s.index[3])  # get the 3rd index, start from 0
# print(s.iloc[3])  # get the 3rd value, start from 0
# print(s.loc['jianhan'])  # get the value of index = 'jianhan', same as above
# print(s)

# s = pd.Series(np.random.randint(0,1000,10000))
# %%timeit -n 100
# summary = 0
# for item in s:
#     summary += item
# print(summary)

purchase_1 = pd.Series({'Name': 'Chris',
                        'Item Purchased': 'Dog Food',
                        'Cost': 22.50})
purchase_2 = pd.Series({'Name': 'Kevyn',
                        'Item Purchased': 'Kitty Litter',
                        'Cost': 2.50})
purchase_3 = pd.Series({'Name': 'Vinod',
                        'Item Purchased': 'Bird Seed',
                        'Cost': 5.00})
df = pd.DataFrame([purchase_1, purchase_2, purchase_3], index=['Store 1', 'Store 1', 'Store 2'])
df.head()
# print(df)
# print(df.loc['Store 1'])  #Get row index = 'Store 1'
# print(df['Cost'])  # Get column name = 'Cost'
# print(df.loc['Store 1', 'Cost'])  # get row = 'Store 1' and column = 'Cost'
# print(df.loc['Store 1']['Cost'])  # same as above
# df.T  # transpose of df, don't change default df structure
# print(df.T)
# print(df.loc[:, ['Name', 'Cost']])
# df.drop('Store 1')
# print(df)  # Don't drop default df
# copy_df = df.copy()
# # copy_df = copy_df.drop('Store 1')  # Drop the copy data like this
# del copy_df['Name']  # Or delete a column like this
# print(copy_df)

purchase_1 = pd.Series({'Name': 'Chris',
                        'Item Purchased': 'Dog Food',
                        'Cost': 22.50})
purchase_2 = pd.Series({'Name': 'Kevyn',
                        'Item Purchased': 'Kitty Litter',
                        'Cost': 2.50})
purchase_3 = pd.Series({'Name': 'Vinod',
                        'Item Purchased': 'Bird Seed',
                        'Cost': 5.00})

df = pd.DataFrame([purchase_1, purchase_2, purchase_3], index=['Store 1', 'Store 1', 'Store 2'])
df.head()
print(df)
print('--------------------')
# print(df[df['Cost'] > 3])
# print(df['Name'][df['Cost']>3])
df = df.set_index([df.index, 'Name'])
print(df)
print(df.index)
print('--------------------')
df.index.names = ['Location', 'Name']
df = df.append(pd.Series(data={
    'Cost': 3.00,
    'Item Purchased': 'Kitty Food'},
    name = ('Store 2', 'Kevyn')))
print(df)