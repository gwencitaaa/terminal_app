
#requiring individual code files so they're available in this master file
require_relative 'Cuisine_types.rb'
require_relative 'Restaurant_arrays.rb'

#requiring csv with restaurant data so it's accessible
filepath = 'Restaurant_list.csv'
user_cuisine_choice = CuisineType.new()

# # getting the user's choice of cuisine and returning array of cuisine options for user
arrays_of_samples = user_cuisine_choice.make_samples

# returns user's choice of cuisine type 
user_selection = user_cuisine_choice.choose_cuisine_type(arrays_of_samples)

# return restaurant recommendation for user 
make_restaurant_recommendation(filepath, user_selection)