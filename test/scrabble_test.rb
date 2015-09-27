gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_multiple_letters
    assert_equal 8, Scrabble.new.score("hello")
    assert_equal 32, Scrabble.new.score("quizz")
  end

  def test_it_scores_nil_and_empty_strings_zero
    assert_equal 0, Scrabble.new.score(nil)
    assert_equal 0, Scrabble.new.score("")
  end
end
