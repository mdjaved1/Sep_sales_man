require_relative 'city'

class Trip
  attr_accessor :first_city
  attr_accessor :second_city
  attr_accessor :distance

  def initialize(first_city, second_city, distance)
    @first_city = first_city
    @second_city = second_city
    @distance = distance
  end
end

def tsp_greed(all_cities, city_current, all_trips, path_b=[])
  best_n = nil
  all_trips.each do |ele|
    if ele.first_city.name == city_current.name
      if best_n == nil && ele.second_city.visited == false
        best_n = ele
      elsif ele.second_city.visited == false && ele.distance < best_n.distance
        best_n = ele
      end
    end
  end
  path_b.push(best_n)
  puts "The distance between #{best_n.first_city.name} and #{best_n.second_city.name} is #{best_n.distance} kms."
  city_current.visited = true
  if best_n.first_city.name == city_current.name
    next_city = best_n.second_city
  else
    next_city = best_n.first_city
  end
  until path_b.length == all_cities.length - 1
   tsp_greed(all_cities, next_city, all_trips, path_b)
  end
end
