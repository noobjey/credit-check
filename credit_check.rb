class CreditCheck


  def validate(card_number)

    mutiplied_by_two = multiply_every_second_digit_by_two(card_number.to_s.chars)

    summed_digits_over_ten = sum_two_character_digits(mutiplied_by_two)

    summed_digits_over_ten
  end

  def prepare(card_number)
    converted_to_array = card_number.to_s.chars
    converted_to_array.map do |string|
      string.to_i
    end
  end

  def multiply_every_second_digit_by_two(numbers)
    multiplied_by_two = []
    numbers.each_with_index do |num, index|
      if index.even?
        multiplied_by_two << num
      else
        multiplied_by_two << num * 2
      end
    end
    multiplied_by_two
  end

  def sum_two_character_digits(numbers)
    numbers.map do |num|
      if num > 9
        (num.to_s[0].to_i + num.to_s[1].to_i)
      else
        num
      end
    end
  end

  def sum_digits(numbers)
    numbers.reduce :+
  end

  def validate_checksum(number)
    number % 10 == 0
  end

end
