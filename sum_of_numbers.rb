# source: https://www.codewars.com/kata/55f2b110f61eb01779000053/train/ruby
def get_sum(a, b)
  # Since ruby has the magic ranges, the solution to
  # this exercise is almost trivial: we build a range from
  # a to b, them sum it toguether, the tricky part is that
  # the a must be less than b for the range to work, which
  # we just do with a couple of ternary operations.
  first = a > b ? b : a
  last = a > b ? a : b
  (first..last).sum

  # Bonus:
  # To select the first and last values we could have used the `#sort` method,
  # if we combine that with array destructuring we obtain:
  first, last = [a, b].sort
  (first..last).sum
end