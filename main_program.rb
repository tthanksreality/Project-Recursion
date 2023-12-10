def fibs_rec(n)
  return [0] if n <= 1
  return [0, 1] if n == 2

  fib_sequence = fibs_rec(n - 1)
  fib_sequence << fib_sequence[-1] + fib_sequence[-2]
  fib_sequence
end
