require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')
require_relative('../fish.rb')


class RiverTest < MiniTest::Test

  def setup()

    @fish1 = Fish.new("Gav")
    @fish2 = Fish.new("Gav")
    @fish3 = Fish.new("Gav")
    @fish = [@fish1, @fish2, @fish3]

    @river = River.new("Amazon", @fish)

  end

def test_river_name
  assert_equal("Amazon", @river.name())
end

def test_fish_count
  assert_equal(3, @river.fish_count)
end

def test_remove_fish
  @river.remove_fish(@fish1)
  assert_equal(2, @river.fish_count())
end






end
