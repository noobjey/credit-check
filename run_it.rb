require_relative 'credit_check'

# valid
card_number = "4929735477250543"
# invalid
# card_number ="4024007106512380"

credit_check = CreditCheck.new

valid = credit_check.validate card_number

if valid
  puts "The number is valid!"
else
  puts "The number is invalid!"
end

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
