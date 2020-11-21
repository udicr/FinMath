import pandas as pd
from datetime import datetime
from time import time

# datetime object containing current date and time

url_treasure = "https://www.treasury.gov/resource-center/data-chart-center/interest-rates/Pages/TextView.aspx?data=yield"
url = "https://finance.yahoo.com/quote/AMD/options?date=1642723200&p=AMD&straddle=false"
url2="https://de.finance.yahoo.com/quote/AMD/key-statistics?p=AMD"
url3="https://de.finance.yahoo.com/quote/AMD/history?p=AMD"
urlstraddle = "https://finance.yahoo.com/quote/AMD/options?date=1642723200&p=AMD&straddle=true"

t0 = time()
dfs = pd.read_html(url)


i = 0
for df in dfs:
    now = datetime.now()

    print("now =", now)

    dt_string = now.strftime("%d%m%Y %H:%M:%S")
    df.to_csv('data/yahoo_pc_stat_210122_table' + str(i) + '_' + dt_string)

    print(df.describe())
    i += 1

dfs = pd.read_html(urlstraddle)
for df in dfs:
    now = datetime.now()

    print("now =", now)

    dt_string = now.strftime("%d%m%Y %H:%M:%S")
    df.to_csv('data/yahoo_pc_stat_210122_table' + str(i) + '_' + dt_string)

    print(df.describe())
    i += 1

dfs = pd.read_html(url2)
for df in dfs:
    now = datetime.now()

    print("now =", now)

    dt_string = now.strftime("%d%m%Y %H:%M:%S")
    df.to_csv('data/yahoo_pc_stat_210122_table' + str(i) + '_' + dt_string)

    print(df.describe())
    i += 1

dfs = pd.read_html(url3)
for df in dfs:
    now = datetime.now()

    print("now =", now)

    dt_string = now.strftime("%d%m%Y %H:%M:%S")
    df.to_csv('data/yahoo_pc_stat_210122_table' + str(i) + '_' + dt_string)

    print(df.describe())
    i += 1
'''
df2 = pd.read_html(url_treasure)
print(df2)
now = datetime.now()

print("now =", now)

dt_string = now.strftime("%d%m%Y %H:%M:%S")
df2.to_csv('data/treasure_bond_yield_rate' + '_' + dt_string)

print(df.describe())

print("Total runtime: " + str(time()-t0))
'''

