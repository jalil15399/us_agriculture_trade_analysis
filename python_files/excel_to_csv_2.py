import pandas as pd
import openpyxl
import csv


data = pd.read_excel('analysis_multiple_sheets.xlsx', sheet_name=None)

for k,v in data.items():
    v.to_csv(f"{k}.csv", index=False)
