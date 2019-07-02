require('minitest/autorun')
require('minitest/rg')

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test


  def  setup
    @bear = Bear.new("Yogi", "Grizzly")

    @fish1 = Fish.new("Gav")
    @fish2 = Fish.new("Gavi")
    @fish3 = Fish.new("Gavin")
    @fish = [@fish1, @fish2, @fish3]

    @river = River.new("Amazon", @fish)
  end

def test_bear_name
  assert_equal("Yogi", @bear.name)
end

def test_bear_type
  assert_equal("Grizzly", @bear.type)
end

def test_number_of_fish
  assert_equal(0, @bear.number_of_fish)
end

def test_eat_fish
  @bear.eat_fish(@fish1, @river)
  assert_equal(1, @bear.number_of_fish())
end

def test_ecosystem
  @bear.eat_fish(@fish1, @river)
  assert_equal(1, @bear.number_of_fish)
  assert_equal(2, @river.fish_count)
end

def test_roar
  assert_equal("roar", @bear.roar)
end
end
