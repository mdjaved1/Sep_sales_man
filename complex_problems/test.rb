require_relative 'city'
require_relative 'tsp_greed'

city1 = City.new("mississauga")
city2 = City.new("brampton")
city3 = City.new("toronto")
city4 = City.new("guelph")
city5 = City.new("ottawa")
city_list = [city1, city2, city3, city4, city5]

trip1 = Trip.new(city1, city2, 1000)
trip2 = Trip.new(city1, city3, 3011)
trip3 = Trip.new(city1, city4, 5002)
trip4 = Trip.new(city1, city5, 237)
trip5 = Trip.new(city2, city3, 3565)
trip6 = Trip.new(city2, city4, 1230)
trip7 = Trip.new(city2, city5, 3851)
trip8 = Trip.new(city3, city4, 723)
trip9 = Trip.new(city3, city5, 2454)
trip10 = Trip.new(city4, city5, 3871)
trip11 = Trip.new(city2, city1, 9008)
trip12 = Trip.new(city3, city1, 2338)
trip13 = Trip.new(city4, city1, 2442)
trip14 = Trip.new(city5, city1, 556)
trip15 = Trip.new(city3, city2, 1957)
trip16 = Trip.new(city4, city2, 2394)
trip17 = Trip.new(city5, city2, 4584)
trip18 = Trip.new(city4, city3, 333)
trip19 = Trip.new(city5, city3, 566)
trip20 = Trip.new(city5, city4, 3445)
t = [trip1, trip2, trip3, trip4, trip5, trip6, trip7, trip8, trip9, trip10, trip11, trip12, trip13, trip14, trip15, trip16, trip17, trip18, trip19, trip20]

tsp_greed(city_list, city1 , t )