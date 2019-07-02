require('minitest/autorun')
require('minitest/rg')

require_relative('../fish.rb')

class FishTest < MiniTest::Test
  def  setup
    @fish = Fish.new("Gav")
  end

  def test_fish_name
    assert_equal("Gav", @fish.name)

  end
end
