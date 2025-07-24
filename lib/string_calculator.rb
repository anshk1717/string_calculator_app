class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      delimiter = Regexp.escape(delimiter)
    else
      delimiter = /[\n,]/
    end

    nums = numbers.split(Regexp.new(delimiter)).map(&:to_i)
    negatives = nums.select { |n| n < 0 }

    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end

    nums.sum
  end
end
