def f(n: int):
    def iter(n_1: int, n_2: int, n_3: int, n: int):
        if (n == 0):
            return n_3

        return iter(n_1 + (2 * n_2) + (3 * n_3), n_1, n_2, n-1)

    return iter(2, 1, 0, n)


def test_f():
    for n in range(3):
        assert f(n) == n
    assert f(3) == 4
    assert f(4) == 11
