def pascal(row: int, col: int):
    if (row == 1):
        return 1
    if (col == 1 or row == col):
        return 1
    return pascal(row - 1, col - 1) + pascal(row - 1, col)


def pascal_row(n: int):
    return list(map(lambda i: pascal(n, i), range(1, n+1)))


def test_pascal():
    assert pascal_row(1) == [1]
    assert pascal_row(2) == [1, 1]
    assert pascal_row(3) == [1, 2, 1]
    assert pascal_row(4) == [1, 3, 3, 1]
    assert pascal_row(5) == [1, 4, 6, 4, 1]
