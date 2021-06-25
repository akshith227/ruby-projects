puts "enter first number: "
n1 = gets
puts "enter second number: "
n2 = gets
n1 = n1.to_f
n2 = n2.to_f
puts "A for addition | S for subtraction | M for multiplication | D for division"
operation = gets
operation = operation.chomp().upcase()
result = nil
if operation == "A"
    result = n1+n2

elsif operation == "S"
    result = n1-n2

elsif operation == "M"
    result = n1*n2

elsif operation == "D"
    result = n1/n2

puts "Answer = " + result.to_s
end