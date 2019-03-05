# require 'csv'

cuisine_type=["hot or spicy", "creamy and rich", "mild and fresh"]
# cuisine_type=[type1, type2,type3, type4, type5, type6,type7]
puts("")
puts("What do you want for dinner?")
cuisine_type.each_with_index do |element, index|
puts("#{index + 1}.\t#{element} food")
end
puts"4.\tquit"
puts "you can press 1 to 4 which one you like"
# choosed_option= gets.chomp.to_i
def input_validation(cuisine_type)
    user_input = gets.chomp.to_i
    case user_input
    when  4
        puts "good bye"
    when  1 
        return cuisine_type[0]
        
    when  2
        return cuisine_type[1]
    when  3
        return cuisine_type[2]
    else
        puts "you enter the wrong number"
            puts "please enter number between 1 to 4"
            user_input= gets.chomp.to_i
    end
end
    # if user_input == 1
    #     puts cuisine_type[0]
    # end 
    # cuisine_type.each do |index|
    # index=index+1
    # end
    # while choosed_option != 1 || 2 || 3 || 4
    #     puts "you enter the wrong number"
    #     puts "please enter number between 1 to 4"
    #     choosed_option= gets.chomp.to_i
    # end
    # if choosed_option == 4
    #     puts "good by"
    #     exit
    # elsif
    #     choosed_option= food_type[choosed_option - 1] 
    # end

# end   
puts input_validation(cuisine_type) 

# TYPES = ["type1", "type2", "type3", "type4", "type5", "type6", "type7"]

# class Cuisine_Type
#     def initialize 
        
#     end
#     def choose_cuisine_type()
#         # puts "what type of cuisin do you like? "
#         puts TYPES.sample(3)
#         puts TYPES
#         # puts cuisine_type.sample(3)

        
#         # put "you can choose between up option"
#         # cuisin_choose=gets().chomp

#         # puts "you choose #{cuisin_choose}"
#     end
    
#     # def
#     #     sample=TYPES.sample(3)
        
        # sample.include?(check)
        # check=[1,2]
        # check.each do |num|
        #     if !arr.include?(num) == false
        #         puts "num is here"
        #     end
        # end

# end  
# user1= Cuisine_Type.new()
# user1.choose_cuisine_type()
