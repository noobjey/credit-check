class CreditCheck


  def validate(number)
    mutiplied_by_two = multiply_every_second_digit_by_two(number)

    sum_digits_over_10 = sum_two_character_digits(mutiplied_by_two)

    sum_digits_over_10
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

end
