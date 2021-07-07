require_relative "int_check_function.rb"
number_of_terms = get_int "Enter number of terms to be calculated: "
terms = Array.new()
for x in 1..number_of_terms
    terms.push(get_int "Enter value #{x}: ")
end
valid_operator = false
while (not valid_operator)
    print "Enter operator(add | subtract | multiply | divide): "
    operator = gets.chomp().upcase()
    if ((operator == "ADD") or (operator == "SUBTRACT") or (operator == "MULTIPLY") or (operator == "DIVIDE"))
        valid_operator = true
    else
        puts "Please enter add / subtract / multiply / divide"
    end
end
product = terms[0]
terms.delete_at(0)
for term in terms do
    if operator == "ADD"
        product += term
    elsif operator == "SUBTRACT"
        product -= term
    elsif operator == "MULTIPLY"
        product *= term
    elsif operator == "DIVIDE"
        product /= term
    end
end
puts "answer = #{product}"