def data_types():
    num = 42
    word = 'hey'
    float_num = 3.14
    bool_var = True
    fruit_list = ['apple','banana','cherry']
    dict_var = {'type':'dictionary'}
    colors_tuple = ('red','green','blue')
    num_set = {7, 8, 9}

    types_list = [
        type(num).__name__,
        type(word).__name__,
        type(float_num).__name__,
        type(bool_var).__name__,
        type(fruit_list).__name__,
        type(dict_var).__name__,
        type(colors_tuple).__name__,
        type(num_set).__name__]
    print('[', end='')
    print(*types_list, sep=', ', end='')
    print(']')


if __name__ == '__main__':
    data_types()
