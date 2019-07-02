class River

  attr_reader :name, :fish_in

  def initialize(name, fish_in)
    @name = name
    @fish_in = fish_in
  end

  def fish_count()
    return @fish_in.size
  end

  def remove_fish(fish)
    @fish_in.delete(fish)
  end



end
