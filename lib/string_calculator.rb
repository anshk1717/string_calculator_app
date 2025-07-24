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
    nums = numbers.split(delimiter).map(&:to_i)
    negatives = nums.select { |n| n < 0 }

    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end

    nums.reduce(:+)
  end
end
