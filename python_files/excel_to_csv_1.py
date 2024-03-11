import pandas as pd
import csv
import openpyxl


input_excel = ['sources_since_2019.xlsx', 'us_agriculture_exports.xlsx',
               'us_agriculture_exports_destinations.xlsx', 'us_agriculture_imports.xlsx',
               'us_agriculture_imports_sources.xlsx', 'destinations_since_2019.xlsx',
               'european_union.xlsx']

output_csv = ['sources_since_2019.csv', 'us_agriculture_exports.csv',
              'us_agriculture_exports_destinations.csv', 'us_agriculture_imports.csv',
              'us_agriculture_imports_sources.csv', 'destinations_since_2019.csv',
              'european_union.csv']

for i in input_excel:
    a = pd.read_excel(i)
    for k in output_csv:
        a.to_csv(k, index=False)
