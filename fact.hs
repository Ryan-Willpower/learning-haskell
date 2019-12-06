-- fact  n = 1 * 2 * ... * n

fact 1 = 1
fact n = n * fact (n - 1)