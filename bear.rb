class Bear

  attr_reader :name, :type

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def number_of_fish()
  @stomach.size
end

def eat_fish(fish, river)
  @stomach << (fish)
  river.remove_fish(fish)
end

def roar
  return "roar"
end
end
