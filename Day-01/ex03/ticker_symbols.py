import sys


def get_price():
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
    
    if len(sys.argv) != 2:
        sys.exit()

    ticker = sys.argv[1].upper()
    company_name = ''

    for key, val in COMPANIES.items():
        if val == ticker:
            company_name = key
            break

    if not company_name:
        print('Unknown ticker')
        return

    price = STOCKS.get(ticker)
    print(company_name, price)

if __name__ == '__main__':
    get_price()
