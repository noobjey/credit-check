# Valid: 5541808923795240, 4024007136512380, 6011797668867828
# Invalid: 5541801923795240, 4024007106512380, 6011797668868728
# Account identifier:    7   9   9   2   7   3   9   8   7   1   x
# 2x every other digit:  7   18  9   4   7   6   9   16  7   2   x
# Summed digits over 10: 7   9   9   4   7   6   9   7   7   2   x
# Results summed:        7   9   9   4   7   6   9   7   7   2` = 67


gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'credit_check'


class CreditCheckTest < Minitest::Test
  def test_muliply_every_second_digit
    input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 1]
    expected = [1, 4, 3, 8, 5, 12, 7, 16, 9, 2]

    credit_check = CreditCheck.new

    result = credit_check.multiply_every_second_digit_by_two(input)

    assert_equal result, expected
  end

  def test_sum_digits_over_10
    input = [1, 4, 3, 8, 5, 12, 7, 16, 9, 2]
    expected = [1, 4, 3, 8, 5, 3, 7, 7, 9, 2]

    credit_check = CreditCheck.new

    result = credit_check.sum_two_character_digits(input)

    assert_equal result, expected
  end

  def test_digits_summed
    skip
    input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 1]
    expected = 46

    result = CreditCheck.new.validate(input)

    assert_equal result, expected
  end
end

