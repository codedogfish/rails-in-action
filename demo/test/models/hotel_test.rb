require 'test_helper'

class HotelTest < ActiveSupport::TestCase

  fixtures :hotels
  def test_random
      results = []
      10.times {results << Hotel.random.name}
      assert results.include?("seven-days")
  end

  def test_create_hotel
      hotel = Hotel.new :name=>"EverGreen"
      assert_equal 'EverGreen',hotel.name
  end
end
