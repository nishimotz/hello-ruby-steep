class Rule
  def apply(number)
    raise NotImplementedError, "#{self.class} must implement apply"
  end
end

class FizzBuzzRule < Rule
  def apply(number)
    "FizzBuzz" if number % 3 == 0 && number % 5 == 0
  end
end

class FizzRule < Rule
  def apply(number)
    "Fizz" if number % 3 == 0
  end
end

class BuzzRule < Rule
  def apply(number)
    "Buzz" if number % 5 == 0
  end
end

class NumberRule < Rule
  def apply(number)
    number.to_s
  end
end

class FizzBuzzProcessor
  def initialize(rules)
    @rules = rules
  end

  def process(number)
    @rules.each do |rule|
      result = rule.apply(number)
      return result if result
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
