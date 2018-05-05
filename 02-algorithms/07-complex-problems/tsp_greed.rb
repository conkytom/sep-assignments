class City
    attr_accessor :name, :x, :y

    def initialize(name, x, y)
        @name = name
        @x = x
        @y = y
    end
end

def distance(start_city, other_city)
    Math.hypot(start_city.x - other_city.x, start_city.y - other_city.y)
end

def nearest_neighbor(all_cities, current_city)
    current_name = [current_city.name]
    until all_cities[0].nil?
      next_city = all_cities[-1]
      all_cities.each do |route|
        if distance(current_city, next_city) > distance(current_city, route)
          next_city = route
        end
      end
      current_city = next_city
      all_cities.delete(next_city)
      current_name.push(current_city.name)
    end
    current_name
end

start = City.new("Philadelphia", 40, 26)
city1 = City.new("Seattle", 0, 50)
city2 = City.new("Bangor", 50, 50)
city3 = City.new("New Orleans", 25, 6)
city4 = City.new("Miami", 35, 70)
city5 = City.new("Las Vegas", 6, 14)
graph = [city1, city2, city3, city4, city5]
trip = nearest_neighbor(graph, start)
puts trip