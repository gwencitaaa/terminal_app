require 'pry'
#requiring individual coding parts so they're available in this master file
require_relative 'Cuisine_types.rb'
require_relative 'Restaurant_arrays.rb'

filepath = 'Restaurant_list.csv'
# binding.pry
user_cuisine_choice = CuisineType.new()

# getting the user's choice of cuisine and returning
# arrays_of_samples = user_cuisine_choice.make_samples
# returns [indian, italian, chinese]
# cuisine_choice = user_cuisine_choice.choose_cuisine_type(arrays_of_samples)
#return "Mexican"
# puts choose_cuisine_type(array_of_samples)


create_array_of_restaurants_by_cuisine(filepath, 'Mexican')
