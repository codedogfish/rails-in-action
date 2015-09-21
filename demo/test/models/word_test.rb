require 'test_helper'
require 'mocha'

class WordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  fixtures :words

  def test_word_is_english_and_polish
      word = Word.new :eng=>'never', :pl=>'nigdy'
      assert_equal 'never',word.eng
      assert_equal 'nigdy',word.pl
  end

  def test_random
      results = []
      10.times {results << Word.random.eng}
      assert results.include?("yes")
  end

end
