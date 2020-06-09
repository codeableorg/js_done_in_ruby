# Source: https://www.codewars.com/kata/55685cd7ad70877c23000102/train/ruby
def make_negative(num)
  # If the number is positive, we convert it to negative by prefixing it
  # with the minus symbol "-"
  num > 0 ? -num : num
end