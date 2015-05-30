class CreditCheck
  def validate(number)
    mutiplied_by_two = []
    number.each_with_index do |num, index|
      if index.even?
        mutiplied_by_two << num
      else
        mutiplied_by_two << num * 2
      end
    end

    sum_digits_over_10 = mutiplied_by_two.map do |num|
      if num > 9
        puts "num [#{num}]"
        puts "n1 + n2 *********************************[#{num.to_s[0].to_i + num.to_s[1].to_i}]"
        (num.to_s[0].to_i + num.to_s[1].to_i)
      else
        num
      end
    end
    sum_digits_over_10
  end
end
