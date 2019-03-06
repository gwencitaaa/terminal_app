require_relative 'Flavour_types'
food_type = ["Hot and spicy", "Creamy and rich", "Mild and fresh"]

puts("")
puts("What are you in the mood for? Press 1 to 4 according to your preference.")
# list food type in a list with numbers for them
food_type.each_with_index do |element, index|
puts("#{index + 1}.\t#{element} food")
end
puts"4.\tQuit"
user_choice = gets.chomp.to_i


def input_validation(food_type, user_choice)
    # user_choice = gets.chomp.to_i
    # user_input = gets.chomp.to_i
    while user_choice != 1 && user_choice !=2 && user_choice !=3 && user_choice !=4
        puts "Incorrect input."
        puts "Please enter a number between 1 and 4."
        user_choice= gets.chomp.to_i
    end

    case user_choice
    when 4
        puts "Enjoy your night!"
    when 1 
        return "You chose '#{food_type[0]}'"   
    when 2
        return "You chose '#{food_type[1]}'"
    when 3
        return "You chose '#{food_type[2]}'"
    else
        while puts "Incorrect input."
            puts "Please enter a number between 1 and 4."
            user_choice= gets.chomp.to_i
        end
    end
end

input_validation(food_type,user_choice) 

TYPES_OF_CUSINES = ["Chinese", "Indian", "Korean", "Italian", "Vegetarian", "Vietnamese", "Middle Eastern", "Mexican", "Japanese"]

class CuisineType
    def initialize 
    end
    
    # create sample of 3 cuisine types from TYPES_OF_CUSINES array
    def create_sample(cuisine_samples_array, number_of_samples)
        return cuisine_samples_array.sample(number_of_samples)
    end
    
    #delete sample array from TYPES_OF_CUSINES array
    def delete_duplicates(all_samples, already_created_sample)
        new_array = all_samples - already_created_sample
    end
    
    def make_samples  # make 3 unique samples of arrays from TYPES_OF_CUSINES array 
        sample1 = create_sample(TYPES_OF_CUSINES, 3)
        new_array = delete_duplicates(TYPES_OF_CUSINES, sample1)
        
        sample2 = create_sample(new_array, 3)  

        ## delete sample 2 from all cuisine samples
        new_array = delete_duplicates(new_array, sample2)
        sample3 = create_sample(new_array, 3)
        
        array_of_samples = []
        array_of_samples << sample1 << sample2 << sample3 # append 3 above array of samples in array_of samples
        return array_of_samples
    end
    def choose_cuisine_type(array_of_samples) 
        selection = true
        counter = 0
        while selection && counter < array_of_samples.length # any time user is not happy with 3 option that been offered, provide new new 3options. 
            
            samples=array_of_samples[counter]
            samples.each_with_index do |element, index|
                puts("#{index + 1}.\t#{element} food")
                end
            puts "Are you happy to choose one of these three options? Enter 'Y' for yes or 'N' to see a different set of three options."
            user_input2 = gets.chomp.upcase
            while user_input2 != "Y" && user_input2 != "N"
                print "you should enter 'Y' or 'N'"
                puts user_input2 = gets.chomp.upcase
                print "> "
            end
            if user_input2 == "Y"
                selection = false
            else
                counter += 1
                if counter == array_of_samples.length
                    puts "There are no more options."
                end
            end
        end
         
        samples.each_with_index do |element, index|
            puts("#{index + 1}.\t#{element} food")
            end

        puts "Type the numvber of cuisine you prefer."

        puts input_validation2(samples)
        
    end            
end
def input_validation2(samples)
        user_choice = gets.chomp.to_i
        # user_input = gets.chomp.to_i
        while user_choice != 1 && user_choice !=2 && user_choice !=3 && user_choice !=4
            puts "Incorrect input."
            puts "Please enter a number between 1 and 3."
            user_choice= gets.chomp.to_i
        end
    
        case user_choice
        when 1 
            return "#{samples[0]}"
        when 2
            return "#{samples[1]}"
        when 3
            return "#{samples[2]}"
        else
            while puts "Incorrect input."
                puts "Please enter a number between 1 and 3."
                user_choice= gets.chomp.to_i
            end
        end
    end
# creating class instance of cuisine type based on user selection
user_cuisine_choice = CuisineType.new()

# getting the user's choice of cuisine and returning
arrays_of_samples = user_cuisine_choice.make_samples
user_cuisine_choice.choose_cuisine_type(arrays_of_samples)