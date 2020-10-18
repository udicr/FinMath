import pandas as pd

url = 'https://de.finance.yahoo.com/quote/AMD/options?date=1610668800&p=AMD'
dfs = pd.read_html(url)

print(len(dfs))

