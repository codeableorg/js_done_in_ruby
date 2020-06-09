# Source: https://www.codewars.com/kata/54c27a33fb7da0db0100040e/train/ruby
def is_square(x)
  # Negative numbers don't have square root using real numbers
  return false if x.negative?

  # We calculate the square root, if the result is a integer,
  # we can say that the number is a perfect square
  # sqrt(9) = 3 -> 9 is a perfect square
  # sqrt(2) = 1.414 -> 2 is not a perfect square
  squared = Math.sqrt(x)

  # What this does is to check if a number doesn't have a decimal part,
  # which means that it is an integer
  #
  # Since Math.sqrt always returns a Float obj (regardless if it has a decimal or not)
  # we cannot check if the returned value is_a? Integer,
  # so we get the floor of the float to see if it is equal to to the full number.
  # Example 1:
  #   sqrt(9) = 3.0 -> floor(3.0) = 3.0 -> 3.0 is equal to 3.0
  # Example 2:
  #   sqrt(2) = 1.414 -> floor(1.414) = 1.0 -> 1.0 is to 1.414
  squared.floor == squared
end