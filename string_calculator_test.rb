require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
    def test_empty_string_returns_zero
        assert_equal 0, StringCalculator.add("")
    end

    def test_single_number
        assert_equal 1, StringCalculator.add("1")
    end

    def test_two_comma_seperated_numbers
        assert_equal 5, StringCalculator.add("2,3")
    end

    def test_multiple_comma_seperated_numbers
        assert_equal 10, StringCalculator.add("1,2,3,4")
    end

    def test_numbers_with_newlines
        assert_equal 6, StringCalculator.add("1\n2,3")
    end

    def test_custom_single_character_delimiter
        assert_equal 3, StringCalculator.add("//;\n1;2")
    end

    def test_negative_numbers_raise_exception
        error = assert_raises(ArgumentError) { StringCalculator.add("1,-2,3") }
        assert_match /negative numbers not allowed: -2/, error.message 
    end
end