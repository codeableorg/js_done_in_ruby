# Source: https://www.codewars.com/kata/55d24f55d7dd296eb9000030/train/ruby
def summation(num)
  # We construct a range from 1 to num, inclusive
  # Which is equivalent to an array of [, 1, 2, 3, ...num]
  # So for num = 8, this would be: [1, 2, 3, 4, 5, 6, 7, 8], which adds
  # up to 36.
  # After we create that range, we just sum it using the built in method "sum"
  # (this method does not exist in JS)
  (1..num).sum

  # Using reduce it would be:
  (1..num).reduce { |acc, value| acc + value }

  # Bonus: The above is also equivalent to:
  # You can read why this work here: http://walterbm.github.io/blog/2015/06/11/how-does-reduce-plus-work/
  # The TL;DR version is that, the shorthand `:+` invoces the method `+` on
  # the first element, which would be the accumulator, using as parameter
  # the second element, which would be the second element
  # The code below traduces to: `(1..num).reduce { |acc, value| acc.+(value) }`
  (1..num).reduce(:+)
end