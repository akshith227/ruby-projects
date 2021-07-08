#  class User
#     @@user_number = 0
#     def initialize(name, age, gender)
#         @user_name = name
#         @user_age = age
#         @user_gender = gender
#     end
#     def change_name=(name)
#         @user_name = name
#     end
#     def change_age=(age)
#         @user_age = age
#     end
#     def show_data
#         puts "Name: #{@user_name}, Age: #{@user_age}, Gender: #{@user_gender}"
#     end
#     def name
#         @user_name
#     end
#     def age
#         @user_age
#     end
# end
class User
    attr_accessor :name, :age, :gender
    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
    end
    # def change_name=(name)
    #     @user_name = name
    # end
    # def change_age=(age)
    #     @user_age = age
    # end
    def show_data
        "Name: #{@name}, Age: #{@age}, Gender: #{@gender}"
    end
    # def name
    #     @user_name
    # end
    # def age
    #     @user_age
    # end
end
users = []
user1 = User.new("Akshith", 15, "Male")
users.push(user1)
running = true
while running
    puts "welcome to user management system"
    puts "What would you like to do: \n View users:  view \n Create user: create \n Modify user: mod \n Delete user: delete \n Exit: exit"
    valid = false
    until valid do
        option = gets.upcase().chomp()
        if (option == "VIEW" or option == "CREATE" or option == "MOD" or option == "DELETE" or option == "EXIT")
            valid = true
        else
            print "Please put a valid option: "
        end
    end
    if option == "VIEW"
        puts "\n \n \n"
        for user in users do
            puts "*************"
            puts "\n"
            puts "#{user.show_data}, ID = #{user.object_id}"
            puts "\n"
            puts "*************"
        end
        puts "\n \n \n"
    elsif option == "CREATE"
        print "Enter user name: "
        name = gets.chomp()
        valid_age = false
        until valid_age do
            print "Enter user age: "
            age = gets.chomp()
            if age.to_i.to_s == age
                age = age.to_i
                valid_age = true
            else
                puts "Enter a valid whole number"
            end
        end
        print "Enter gender: "
        gender = gets.chomp()
        users.push(User.new(name, age, gender))
        puts "\n \n \n"
    elsif option == "DELETE"
        print "Enter id of user: "
        id = gets.chomp().to_i
        for user in users do
            if user.object_id = id
                print "#{user.name} is sus"
        end
    elsif option == "EXIT"
        puts "ok bye"
        running = false
    end
end
# user1 = User.new("Akshith", 15, "Male")
# users.push(user1)
# user1.show_data
# user1.name = "Shiva"
# user1.age = 45
# puts user1.name
# puts user1.age