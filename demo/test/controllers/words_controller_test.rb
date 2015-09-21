require 'test_helper'
require 'mocha/test_unit'

class WordsControllerTest < ActionController::TestCase
#  test "should get learn" do
#    get :learn
#    assert_response :success
#    assert_kind_of Word, assigns('word')
#  end

  def test_learn_passes_a_random_word
      random_word = Word.new
      Word.expects(:random).returns(random_word)
      get 'learn'
      assert_equal random_word,assigns('word')
  end
end
