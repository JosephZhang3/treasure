conditionA = true
conditionB = false

if conditionA and conditionB
	puts 'real'
elsif conditionB
	puts 'B is real'
elsif conditionA
	puts 'A is real'
else
	puts 'all are not real'
end

if conditionA or conditionB
	puts 'one of them is real'
end