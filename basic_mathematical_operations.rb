# Source: https://www.codewars.com/kata/57356c55867b9b7a60000bd7/train/ruby
def basic_op(operator, value1, value2)
  # We use a case statement to know which operation is used, and to
  # return the correct result
  case operator
  when "+"
    value1 + value2
  when "-"
    value1 - value2
  when "*"
    value1 * value2
  when "/"
    value1 / value2
  else
    # If we are provided with a operation that is unknown, we raise an error
    raise ArgumentError.new("Operation is not known. Use +, -, * or / ")
  end
end

# BONUS: Solution using metaprogramming, with the #send method
def basic_op2(operator, value1, value2)
  # Since we are going to use the operator as a method, we
  # need to make sure it can only be one of the allowed operations
  ["+", "-", "*", "/"].include?(operator)

  # The method `send` allows us to invoke a method using a dynamic
  # string (which must be converted to a symbol)
  value1.send(operator.to_sym, value2)
end
