class FizzBuzzRule
  def apply(number)
    return "FizzBuzz" if number % 3 == 0 && number % 5 == 0
    ""
  end
end

class FizzRule
  def apply(number)
    return "Fizz" if number % 3 == 0
    ""
  end
end

class BuzzRule
  def apply(number)
    return "Buzz" if number % 5 == 0
    ""
  end
end

class NumberRule
  def apply(number)
    return number.to_s
  end
end

class FizzBuzzProcessor
  def initialize(rules)
    @rules = rules
  end

  def process(number)
    @rules.each do |rule|
      result = rule.apply(number)
      return result if !result.empty?
    end
    ""
  end
end

if __FILE__ == $PROGRAM_NAME
  rules = [
    FizzBuzzRule.new,
    FizzRule.new,
    BuzzRule.new,
    NumberRule.new
  ]
  processor = FizzBuzzProcessor.new(rules)

  (1..20).each do |number|
    puts processor.process(number)
  end
end
