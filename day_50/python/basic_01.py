# Data Series
# Series in pandas - set data can't be used
# Series is a one-dimentional data, much like an excel column and each data has an index

import pandas as pd

list = [1, 2, 3, 4, 5]
data_series = pd.Series(list)
print(data_series)
print(type(data_series))
print(data_series.index)
print(data_series.values)


# Dataframe creation
# A dataframe is two-dimentional data, much like an excel rows and column. also each data has an index.

data = {
    "Name": ["Shantanu", "Rumi", "Bappa"],
    "Age": [21, 21, 25],
    "Salary": [100000, 50000, 80000]
}
labels = ["a", "b", "c"]

df = pd.DataFrame(data, labels)
print(df)
print(type(df))

# Read files using pandas

a = pd.read_csv("d:\Job Hunting\kolkata_companies_jobs.csv")
print(a)


# Save file in pandas

df.to_csv("output.csv", index=0)
df.to_excel("output.xlsx", index=0)
df.to_json("output.json", index=0)


# First top rows and last columns

df.head(10)
df.tail(10)
print(df)
print(df.info()) # It shows column name, number of rows and data type 
print(df.describe()) # It give descriptive statistics below is example breakdown:
print(df.shape)
print(df.columns)

# count : It conut number of rows and tells us if there is null value or not
# mean : It tells us the average value of the data
# std: standard deviation tells us how our data is spread out. if the value closer to mean
# value it's called small std and if the value not closer to mean that known as large std.
# min : It mean the minimum ValueError
# max : It mean the maximum value
# 25% : This is the middle point of your data. 50% of the values are below this number, and 50% are above it.
# 50% : This is the "lower quarter." It tells you that 25% of your data points are smaller than this value.
# 75% : This is the "upper quarter." It tells you that 75% of your data points are smaller than this value (or, put another way, the top 25% of your data starts here).

