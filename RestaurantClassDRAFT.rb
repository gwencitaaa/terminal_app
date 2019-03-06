
filepath = 'Restaurant_list.csv'

# require_relative 'Restaurant_list'
#creating class for restaurant hashes, which will push restaurant suggestions to user based on their responses

#Q do I put this in a class? Don't want to have question there and don't want to show this method to user
require 'csv'
require 'pry'

def read_line_by_line(filename)
    array_of_restaurants = []
    CSV.foreach(filename, headers: true, header_converters: :symbol) do |row|
        name = row[2].strip
        address = row[0].strip
        cuisine_type = row[3].strip
        flavour_type = row[4].strip

        restaurant_hash = {
            name: name,
            address: address,
            cuisine_type: cuisine_type,
            flavour_type: flavour_type 
        }

        array_of_restaurants << restaurant_hash
    end
    return array_of_restaurants
end

def read_all_at_once(filename)
    puts CSV.read(filename)
end

# method to find all of the restaurants from the cuisine that the user selects, which will return an array of restaurants by cuisine
def create_array_of_restaurants_by_cuisine(filepath)
    array_of_restaurants_by_cuisine = []
    array_of_restaurants = read_line_by_line(filepath)
    restaurants_by_cuisine_type = array_of_restaurants.select do |restaurant|
        restaurant[:cuisine_type] == "Vietnamese"
    end
    return restaurants_by_cuisine_type
end


# method to go through array of restaurants by cuisine and return random selection (method .sample)
def make_restaurant_recommendation(filepath)
    restaurant_recommendation = create_array_of_restaurants_by_cuisine(filepath) 
    recommendation = restaurant_recommendation.sample
    final_string = """
    We recommend this restaurant for you! 
    Cuisine: #{recommendation[:cuisine_type]}
    Restaurant: #{recommendation[:name]}
    Address: #{recommendation[:address]}

    Sounds great!     Press 1
    Try again please. Press 2
    """
    return final_string
end

puts make_restaurant_recommendation(filepath)
# p create_array_of_restaurants_by_cuisine(filepath)

#Anhar help pls! 
# restaurant_1 = Restaurant.new("#{@name}")
# rest_one = Restaurant.new("La Porchetta", "300 Lonsdale St, Melbourne 3000", "Italian", "mild and fresh")
# rest_two = Restaurant.new("La Porchetta", "300 Lonsdale St, Melbourne 3000", "Italian", "mild and fresh")
# rest_three = Restaurant.new("La Porchetta", "300 Lonsdale St, Melbourne 3000", "Italian", "mild and fresh")

# arr = [rest_one, rest_two, rest_three]

# arr.each do |restaurant|
#     puts restaurant.class
#     puts restaurant.name
# end





# puts rest_one.name