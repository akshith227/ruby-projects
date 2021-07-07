# def check_int? (num)
#     if (num.to_f.to_s == num) or (num.to_i.to_s == num)
#         return true
#     else
#         return false
# def get_int (prompt)
#     not_int = true
#     while not_int
#         print "#{prompt}: "
#         num = gets.chomp()
#         begin
#             num = num.to_f
#         rescue => exception
#             puts exception
#             puts "Please enter a valid integer"
#         else
#             not_int = false
#             return num.to_f
#         end
#     end
# end
def get_int (prompt)
    not_int = true
    while not_int
        print "#{prompt}"
        num = gets.chomp()
        if (num.to_f.to_s == num) or (num.to_i.to_s == num)
            not_int = false
            return num.to_f
        else
            not_int = true
            puts "Please enter a valid integer"
        end
    end
end