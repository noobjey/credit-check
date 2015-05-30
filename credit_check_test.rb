# Valid: 5541808923795240, 4024007136512380, 6011797668867828
# Invalid: 5541801923795240, 4024007106512380, 6011797668868728
# Account identifier:    7   9   9   2   7   3   9   8   7   1   x
# 2x every other digit:  7   18  9   4   7   6   9   16  7   2   x
# Summed digits over 10: 7   9   9   4   7   6   9   7   7   2   x
# Results summed:        7   9   9   4   7   6   9   7   7   2` = 67
# Divide by 10 to determine validity
# Read card number from right to left

gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'credit_check'


class CreditCheckTest < Minitest::Test
  def test_muliply_every_second_digit
    # skip
    input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 1]
    expected = [1, 4, 3, 8, 5, 12, 7, 16, 9, 2]

    credit_check = CreditCheck.new

    result = credit_check.multiply_every_second_digit_by_two(input)

    assert_equal expected, result
  end

  def test_sum_digits_over_10
    # skip
    input = [1, 4, 3, 8, 5, 12, 7, 16, 9, 2]
    expected = [1, 4, 3, 8, 5, 3, 7, 7, 9, 2]

    credit_check = CreditCheck.new

    result = credit_check.sum_two_character_digits(input)
    assert_equal expected, result
  end

  def test_digits_summed
    # skip
    input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 1]
    expected = 46

    credit_check = CreditCheck.new

    result = credit_check.sum_digits(input)
    assert_equal expected, result
  end

  def test_valid_credit_checksum
    # skip
    input = 70
    expected = true

    credit_check = CreditCheck.new

    result = credit_check.validate_checksum(input)
    assert_equal expected, result
  end

  def test_prepare_returns_an_array_of_integers
    #skip
    card_number = 5541808923795240
    expected = [0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5]

    credit_check = CreditCheck.new

    result = credit_check.prepare(card_number)
    assert_equal expected.class, result.class
    assert_equal expected[0].class, result[0].class
  end

  def test_prepare_sets_up_right_to_left_parsing
    #skip
    card_number = 5541808923795240
    expected = [0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5]

    credit_check = CreditCheck.new

    result = credit_check.prepare(card_number)
    assert_equal expected, result
  end

  def test_valid_card
    # skip
    card_number = 6011797668867828
    expected = true

    credit_check = CreditCheck.new

    result = credit_check.validate(card_number)
    assert_equal expected, result
  end

  def test_invalid_card
    # skip
    card_number = 6011797668868728
    expected = false

    credit_check = CreditCheck.new

    result = credit_check.validate(card_number)
    assert_equal expected, result
  end
end

