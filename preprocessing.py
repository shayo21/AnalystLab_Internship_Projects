import pandas as pd

def clean_retail(df):
    df = df.drop_duplicates()
    df = df.dropna()
    df = df[~df['InvoiceNo'].astype(str).str.startswith('C')]
    df = df[df['Quantity'] > 0]
    df = df[df['UnitPrice'] > 0]
    return df

def clean_netflix(df):
        df = df.drop_duplicates()

        df['director'] = df['director'].fillna('Unknown')
        df['cast'] = df['cast'].fillna('Unknown')
        df['country'] = df['country'].fillna('Unknown')
        
        df = df.dropna(subset=['title', 'type'])
        df['date_added'] = pd.to_datetime(df['date_added'], errors= 'coerce')
        df = df.dropna(subset=['date_added'])
        return df
