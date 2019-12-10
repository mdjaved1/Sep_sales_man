class City
  attr_accessor :name
  attr_accessor :visited

  def initialize(name)
    @name = name
    @visited = false
  end
end