class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.to_i.to_s == numbers
    numbers.split(',').map(&:to_i).reduce(:+)
    numbers.split(/[\n,]/).map(&:to_i).reduce(:+)
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
    else
      delimiter = /[\n,]/
    end
    numbers.split(delimiter).map(&:to_i).reduce(:+)
  end
end
