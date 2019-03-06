
filepath = 'Restaurant_list.csv'

#method to read csv of restaurant information 
require 'csv'

def read_line_by_line(filename)
    array_of_restaurants = []
    CSV.foreach(filename, headers: true, header_converters: :symbol) do |row|
        #getting data from csv by column category
        name = row[2].strip
        address = row[0].strip
        cuisine_type = row[3].strip
        flavour_type = row[4].strip
        #storing each restuarant (i.e. each row in the csv) into a hash
        restaurant_hash = {
            name: name,
            address: address,
            cuisine_type: cuisine_type,
            flavour_type: flavour_type 
        }
        array_of_restaurants << restaurant_hash
    end
    #making array of restaurants available to sort through in next method
    return array_of_restaurants
end

# method to find all of the restaurants from the cuisine that the user selects, which will return an array of restaurants by cuisine
def create_array_of_restaurants_by_cuisine(filepath)
    array_of_restaurants_by_cuisine = []
    array_of_restaurants = read_line_by_line(filepath)
    restaurants_by_cuisine_type = array_of_restaurants.select do |restaurant|
        restaurant[:cuisine_type] == "Vietnamese"
    end
    #returning restaurants in cuisine group so random selection can be pulled out of it
    return restaurants_by_cuisine_type
end

# method to go through array of restaurants by cuisine and return random selection
def make_restaurant_recommendation(filepath)
    restaurant_recommendation = create_array_of_restaurants_by_cuisine(filepath) 
    recommendation = restaurant_recommendation.sample
    #message to user with random selection
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