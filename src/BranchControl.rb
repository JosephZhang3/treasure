conditionA = true
conditionB = false

# IF AND
if conditionA and conditionB
	puts 'real'
elsif conditionB
	puts 'B is real'
elsif conditionA
	puts 'A is real'
else
	puts 'all are not real'
end


# IF OR
if conditionA or conditionB
	puts 'one of them is real'
end


# SWITCH
def testSwitch(today)
	case today
	when 'Mon'
		wholeName = 'monday'
	when 'Wed'
		wholeName = 'wednesday'
	when 'Sat'
		wholeName = 'saturday'
	else
		wholeName = 'noexist'
	end
	return wholeName
end
puts testSwitch('Wed')
puts testSwitch('XXX')
