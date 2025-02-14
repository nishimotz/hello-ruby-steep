require 'minitest/autorun'
require_relative 'fizzbuzz'

class TestRule < Minitest::Test
  def test_rule_cannot_be_instantiated
    assert_raises(NotImplementedError) { Rule.new.apply(1) }
  end
end

class TestFizzBuzzRule < Minitest::Test
  def setup
    @rule = FizzBuzzRule.new
  end

  def test_apply
    assert_equal "FizzBuzz", @rule.apply(15)
    assert_nil @rule.apply(1)
  end
end

class TestFizzRule < Minitest::Test
  def setup
    @rule = FizzRule.new
  end

  def test_apply
    assert_equal "Fizz", @rule.apply(3)
    assert_nil @rule.apply(1)
  end
end

class TestBuzzRule < Minitest::Test
  def setup
    @rule = BuzzRule.new
  end

  def test_apply
    assert_equal "Buzz", @rule.apply(5)
    assert_nil @rule.apply(1)
  end
end

class TestNumberRule < Minitest::Test
  def setup
    @rule = NumberRule.new
  end

  def test_apply
    assert_equal "1", @rule.apply(1)
    assert_equal "3", @rule.apply(3)
    assert_equal "5", @rule.apply(5)
    assert_equal "15", @rule.apply(15)
  end
end

class TestFizzBuzzProcessor < Minitest::Test
  def setup
    rules = [FizzBuzzRule.new, FizzRule.new, BuzzRule.new, NumberRule.new]
    @processor = FizzBuzzProcessor.new(rules)
  end

  def test_normal_numbers
    assert_equal "1", @processor.process(1)
    assert_equal "2", @processor.process(2)
    assert_equal "4", @processor.process(4)
  end

  def test_fizz_rule
    assert_equal "Fizz", @processor.process(3)
    assert_equal "Fizz", @processor.process(6)
    assert_equal "Fizz", @processor.process(9)
  end

  def test_buzz_rule
    assert_equal "Buzz", @processor.process(5)
    assert_equal "Buzz", @processor.process(10)
    assert_equal "Buzz", @processor.process(20)
  end

  def test_fizzbuzz_rule
    assert_equal "FizzBuzz", @processor.process(15)
    assert_equal "FizzBuzz", @processor.process(30)
    assert_equal "FizzBuzz", @processor.process(45)
  end
end
