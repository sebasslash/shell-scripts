import pandas as pd

dataframe = pd.read_csv("../Downloads/form_data_20171020.csv")

email_df = dataframe["Email"]

email_df = email_df.astype(str) + ", "

email_df.to_csv("MYSS-emails.csv")
print(email_df)
