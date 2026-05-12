# 1) Select specific column

import pandas as pd

data = {
    "Name": ["Shantanu", "Rumi", "Bappa"],
    "Age": [21, 21, 25],
    "Salary": [100000, 50000, 80000]
}



df = pd.DataFrame(data)
print(df["Name"])

# 2) Filter rows

filtered_rows = df[df["Age"] > 21]
print(filtered_rows)

# 3) Combine multiple column

filtered_rows = df[(df["Age"] > 21) & (df["Age"] < 26)]
print(filtered_rows)

