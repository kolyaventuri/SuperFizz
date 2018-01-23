# Super_Fizz.rb
# Kolya Venturi
# Turing - Cohort 1801
# Backend Module 1

def check(num) # Method to test number
  if(num === 0) then return 0 end

  value = "" # Initialize output variable

  # Use modulo to add Super|Fizz|Buzz to final value

  if(num % 7 == 0) then value += "Super" end # If divisible by 7, add Super
  if(num % 3 == 0) then value += "Fizz" end # If divisible by 3, add Fizz
  if(num % 5 == 0) then value += "Buzz" end # If divisible by 5, add Buzz (3 and 5 aren't in descending order for a reason)


  if(value.length < 1) then return num.to_s end # Return the number to print if nothing worked

  return value # Return the final Super|Fizz|Buzz value
end

1001.times do |i| # Iterate from 0 to 1000 (1001 times)
  puts check(i) # Has to be i + 1 because we want [1, N]
end
