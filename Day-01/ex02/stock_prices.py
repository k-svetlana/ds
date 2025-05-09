import sys

COMPANIES = {
    'Apple': 'AAPL',
    'Microsoft': 'MSFT',
    'Netflix': 'NFLX',
    'Tesla': 'TSLA',
    'Nokia': 'NOK'
}

STOCKS = {
    'AAPL': 287.73,
    'MSFT': 173.79,
    'NFLX': 416.90,
    'TSLA': 724.88,
    'NOK': 3.37
}

def get_price():
    if len(sys.argv) != 2:
        sys.exit()

    company_name = sys.argv[1].capitalize()
    # https://www.geeksforgeeks.org/string-capitalize-python/
    ticker = COMPANIES.get(company_name)

    if ticker:
        price = STOCKS.get(ticker)
        print(price)
    else:
        print("Unknown company")

if __name__ == "__main__":
    get_price()
