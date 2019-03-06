# require 'csv'

# cuisine_type=["hot or spicy", "creamy and rich", "mild and fresh"]
# # cuisine_type=[type1, type2,type3, type4, type5, type6,type7]
# puts("")
# puts("What do you want for dinner?")
# cuisine_type.each_with_index do |element, index|
# puts("#{index + 1}.\t#{element} food")
# end
# puts"4.\tquit"
# puts "you can press 1 to 4 which one you like or prefere"
# # choosed_option= gets.chomp.to_i
# def input_validation(cuisine_type)
#     user_input = gets.chomp.to_i
#     while user_input != 1 && user_input !=2 && user_input !=3 && user_input !=4
#         puts "you enter the wrong number"
#         puts "please enter number between 1 to 4"
#         user_input= gets.chomp.to_i
#     end
    
#     case user_input
#     when 4
#         puts "good bye"
#     when 1 
#         return cuisine_type[0]
#         puts "1"
#     when 2
#         return cuisine_type[1]
#     when 3
#         return cuisine_type[2]
#     # else
#         # while puts "you enter the wrong number"
#         #     puts "please enter number between 1 to 4"
#         #     user_input= gets.chomp.to_i
#     end
# end
    
# puts input_validation(cuisine_type) 

TYPES = ["type1", "type2", "type3", "type4", "type5", "type6", "type7", "type8", "type9"]

class Cuisine_Type
    def initialize 
        
    end

    # def first_sample_maker
    #     sample1= TYPES.sample(3)
    # end

    # def second_sample_maker(types, first_sample)
    #     types = types - first_sample 
    #     second_batch_of_sample= types.sample(3)
    # end
        
    # def second_sample_checker(sample1, sample2)
    #     sample2.each_with_index do |element,i|
    #     end
    #     if sample1.include?(element)==true
    #         # if sample1 includes the same item, we want a different item?
    #         sample2[i] = TYPES.sample
    #     else 
    #         return second_sample_maker
    #     end
    # end
    def create_sample(samples_array, number_of_samples)
        return samples_array.sample(number_of_samples)
      end
      
      def delete_duplicates(all_samples, already_created_sample)
        new_array = all_samples - already_created_sample
      end
      
      
    #   all_samples = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
     def choosing_samples
      sample1 = create_sample(TYPES, 3)
      p sample1
      
      new_array = delete_duplicates(TYPES, sample1)
      sample2 = create_sample(new_array, 3)
      p sample2
      
      ## delete sample 2 from all samples
      new_array = delete_duplicates(new_array, sample2)
      sample3 = create_sample(new_array,3)
    p sample3
    arrays_of_samples = []
    arrays_of_samples << sample1 << sample2 << sample3
    puts "arrays_of_samples #{arrays_of_samples}"
    return arrays_of_samples


     end
    def choose_cuisine_type(arrays_of_samples)
        # puts "what type of cuisin do you like? "
        # option_batch1= TYPES.sample(3)
        
        # puts TYPES
        # puts cuisine_type.sample(3)
        selection = true
        counter = 0
        while selection && counter < arrays_of_samples.length 
        
            p arrays_of_samples[counter]
            puts "are you happy with that? enter 'Y' for yes or 'N' for seeing another options"
            user_input2= gets.chomp.upcase
            
            while user_input2 != "Y" && user_input2 != "N"
                print "you should enter 'Y' or 'N'"
                puts user_input2 = gets.chomp.upcase
                print "> "
            end
            if user_input2=="Y"
                selection = false
                
            else
                counter += 1
            end
        end 
        samples=arrays_of_samples[counter]
        puts "choose one of cuisines"
        user_input3= gets.chomp.to_s
        while !samples.include?(user_input3)
            puts "you entered wrong.please enter again."
            user_input3= gets.chomp.to_s
        end
        puts "you choose #{user_input3}"
    end            
end
user1= Cuisine_Type.new()
# p user1_first_sample = user1.first_sample_maker
# p user1_second_sample = user1.second_sample_maker(TYPES, user1_first_sample)
# user1.second_sample_checker
# user1.choose_cuisine_type()
arrays_of_samples=user1.choosing_samples
puts user1.choose_cuisine_type(arrays_of_samples)