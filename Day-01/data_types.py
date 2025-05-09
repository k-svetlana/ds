#!/usr/bin/env python3

def data_types():
    a = 42
    b = "hey"
    c = 3.14
    d = True
    e = ["apple", "banana", "cherry"]
    f = {"type": "dictionary"}
    g = ("red", "green", "blue")
    h = {7, 8, 9}
    
    types_list = [
        type(a).__name__,
        type(b).__name__,
        type(c).__name__,
        type(d).__name__,
        type(e).__name__,
        type(f).__name__,
        type(g).__name__,
        type(h).__name__]
    print(types_list)

if __name__ == "__main__":
    data_types()
