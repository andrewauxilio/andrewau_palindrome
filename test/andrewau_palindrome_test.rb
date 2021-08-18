# frozen_string_literal: true

require "test_helper"

class AndrewauPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::AndrewauPalindrome::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_non_palindrome
    assert !"apple".palindrome?
  end

  def test_simple_palindrome
    assert "madam".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_letters
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  end
end
