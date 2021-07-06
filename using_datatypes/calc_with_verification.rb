# def check_int? (num)
#     if (num.to_f.to_s == num) or (num.to_i.to_s == num)
#         return true
#     else
#         return false
def check_int? (num)
    pass
end
int_ = false
number_of_terms = gets
while int_ == false do
    print "enter number: "
    num = gets
    num = num.chomp()
    if (num.to_f.to_s == num) or (num.to_i.to_s == num)
        int_ = true
    else
        int_ = false
        puts "please enter an integer"
end
puts num.to_f + 5
end
