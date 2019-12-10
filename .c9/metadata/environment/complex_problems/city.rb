{"filter":false,"title":"city.rb","tooltip":"/complex_problems/city.rb","undoManager":{"mark":13,"position":13,"stack":[[{"start":{"row":0,"column":0},"end":{"row":9,"column":3},"action":"insert","lines":["","class City ","    attr_accessor :name","    attr_accessor :long_lat","   ","    def initialize(name ,long_lat)","       @name = name","       @long_lat = long_lat","    end","end"],"id":1}],[{"start":{"row":0,"column":0},"end":{"row":1,"column":0},"action":"remove","lines":["",""],"id":2}],[{"start":{"row":0,"column":0},"end":{"row":8,"column":3},"action":"remove","lines":["class City ","    attr_accessor :name","    attr_accessor :long_lat","   ","    def initialize(name ,long_lat)","       @name = name","       @long_lat = long_lat","    end","end"],"id":3},{"start":{"row":0,"column":0},"end":{"row":44,"column":3},"action":"insert","lines":["class City","  attr_accessor :name, :visited","  attr_reader :neighbors","","  def initialize(name)","    @name = name","    @neighbors = []","    @visited = false","  end","","  # We'll compare nearest neighbor when adding the neighbor to the city.","  def add_neighbor(city, distance)","    # Set indicies","    low = 0","    high = @neighbors.length - 1","    mid = 0","","    # If first neighbor (i.e. @neighbors length - 1 is less than zero), adds","    # to the @neighbors instance variable.","    @neighbors.push({city: city, distance: distance}) if high < 0","","    # Uses binary search to find right location before inserting. Sorting on","    # insert prevents searching for nearest neighbor later.","    while low <= high","      mid = (high + low) / 2","","      if @neighbors[mid][:distance] > distance","        high = mid - 1","      elsif @neighbors[mid][:distance] < distance","        low = mid + 1","      else","        @neighbors.insert(mid, {city: city, distance: distance})","        break","      end","    end","","    if @neighbors[mid][:distance] > distance","      @neighbors.insert(mid, {city: city, distance: distance})","    elsif @neighbors[mid][:distance] < distance && mid == @neighbors.length - 1","      @neighbors.push({city: city, distance: distance})","    else","      @neighbors.insert(mid + 1, {city: city, distance: distance})","    end","  end","end"]}],[{"start":{"row":1,"column":21},"end":{"row":1,"column":22},"action":"remove","lines":[","],"id":4}],[{"start":{"row":1,"column":22},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":5},{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":15},"action":"insert","lines":["attr_accessor"],"id":6}],[{"start":{"row":2,"column":15},"end":{"row":2,"column":16},"action":"insert","lines":[" "],"id":7}],[{"start":{"row":18,"column":3},"end":{"row":19,"column":42},"action":"remove","lines":[" # If first neighbor (i.e. @neighbors length - 1 is less than zero), adds","    # to the @neighbors instance variable."],"id":10},{"start":{"row":18,"column":2},"end":{"row":18,"column":3},"action":"remove","lines":[" "]}],[{"start":{"row":21,"column":2},"end":{"row":22,"column":59},"action":"remove","lines":["  # Uses binary search to find right location before inserting. Sorting on","    # insert prevents searching for nearest neighbor later."],"id":11},{"start":{"row":21,"column":1},"end":{"row":21,"column":2},"action":"remove","lines":[" "]},{"start":{"row":21,"column":0},"end":{"row":21,"column":1},"action":"remove","lines":[" "]},{"start":{"row":20,"column":0},"end":{"row":21,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":19,"column":65},"end":{"row":20,"column":0},"action":"remove","lines":["",""],"id":12}],[{"start":{"row":18,"column":1},"end":{"row":18,"column":2},"action":"remove","lines":[" "],"id":13},{"start":{"row":18,"column":0},"end":{"row":18,"column":1},"action":"remove","lines":[" "]},{"start":{"row":17,"column":0},"end":{"row":18,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":11,"column":1},"end":{"row":11,"column":72},"action":"remove","lines":[" # We'll compare nearest neighbor when adding the neighbor to the city."],"id":14},{"start":{"row":11,"column":0},"end":{"row":11,"column":1},"action":"remove","lines":[" "]},{"start":{"row":10,"column":0},"end":{"row":11,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":0,"column":0},"end":{"row":39,"column":3},"action":"remove","lines":["class City","  attr_accessor :name ","  attr_accessor :visited","  attr_reader :neighbors","","  def initialize(name)","    @name = name","    @neighbors = []","    @visited = false","  end","","  def add_neighbor(city, distance)","    # Set indicies","    low = 0","    high = @neighbors.length - 1","    mid = 0","","    @neighbors.push({city: city, distance: distance}) if high < 0","    while low <= high","      mid = (high + low) / 2","","      if @neighbors[mid][:distance] > distance","        high = mid - 1","      elsif @neighbors[mid][:distance] < distance","        low = mid + 1","      else","        @neighbors.insert(mid, {city: city, distance: distance})","        break","      end","    end","","    if @neighbors[mid][:distance] > distance","      @neighbors.insert(mid, {city: city, distance: distance})","    elsif @neighbors[mid][:distance] < distance && mid == @neighbors.length - 1","      @neighbors.push({city: city, distance: distance})","    else","      @neighbors.insert(mid + 1, {city: city, distance: distance})","    end","  end","end"],"id":15},{"start":{"row":0,"column":0},"end":{"row":9,"column":3},"action":"insert","lines":["  ","class City","  attr_accessor :name","  attr_accessor :visited","","  def initialize(name)","    @name = name","    @visited = false","  end","end"]}],[{"start":{"row":0,"column":2},"end":{"row":1,"column":0},"action":"remove","lines":["",""],"id":16},{"start":{"row":0,"column":1},"end":{"row":0,"column":2},"action":"remove","lines":[" "]},{"start":{"row":0,"column":0},"end":{"row":0,"column":1},"action":"remove","lines":[" "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":8,"column":3},"end":{"row":8,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1575955237137,"hash":"bab84e98e6c9abdafaf30482ececd43f97a35192"}