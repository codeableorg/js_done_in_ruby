# source: https://www.codewars.com/kata/5545f109004975ea66000086/train/ruby
def is_divisible(n, x, y)
  # Checking if the reminder of a division is equal to 0 allows
  # to know if a number is divisible by another
  # 5 % 4 = 1 -> 5 is not divisible by 4
  # 9 % 3 = 0 -> 9 is divisible by 3
  n % x == 0 && n % y == 0
end