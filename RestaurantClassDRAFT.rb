
#creating class for restaurant hashes, which will push restaurant suggestions to user based on their responses




class Restaurant 
    #allow getters for name and address 
    attr_reader :name, :address
    # initalise class attributes
    def initialize(name, address, cuisine_type, flavour_type)
        #instance variables
        @name = name
        @address = address
        #instance variables in other classes (FlavourType, )
        @cuisine_type = cuisine_type
        @flavour_type = flavour_type
    end 

    #method to suggest restaurant based on cuisine type (with cuisine type coming from cuisine class)
    def recommend_restaurant_from_cuisine_type
        cuisine_type() #GW note: check return is a cuisine type
        #based on cuisine type, push out a random choice of restaurant from the restaurant array that cuisine type category 
        
        return restaurant_suggestion
        puts "Based "
    end
end


rest_one = Restaurant.new("La Porchetta", "300 Lonsdale St, Melbourne 3000", "Italian", "mild and fresh")
rest_two = Restaurant.new("La Porchetta", "300 Lonsdale St, Melbourne 3000", "Italian", "mild and fresh")
rest_three = Restaurant.new("La Porchetta", "300 Lonsdale St, Melbourne 3000", "Italian", "mild and fresh")

arr = [rest_one, rest_two, rest_three]

arr.each do |restaurant|
    puts restaurant.class
    puts restaurant.name
end



# puts rest_one.name