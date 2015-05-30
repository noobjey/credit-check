class CreditCheck
  def validate(number)
    result = []
    number.each_with_index do |num, index|
      if index.even?
        result << num
      else
        result << num * 2
      end
    end
    result
  end
end
