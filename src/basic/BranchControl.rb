require 'date'

condition_a = true
condition_b = false

# IF AND
if condition_a and condition_b
  puts 'both are real'
elsif condition_b
  puts 'B is real'
elsif condition_a
  puts 'A is real'
  if condition_a
    puts 'a is true!'
  else
    puts 'a is not true!'
  end
else
  puts 'both are not real'
end

# IF OR
if condition_a or condition_b
  puts 'one of them is real'
end

puts 'yeah, one of them is real' if condition_a or condition_b

# SWITCH
def test_switch(today)
  case today
  when 'Monday'
    whole_name = 'monday'
  when 'wednesday'
    whole_name = 'wednesday'
  when 'Saturday'
    whole_name = 'saturday'
  else
    whole_name = 'nonexistent'
  end
  whole_name
end

puts test_switch(Date.today.strftime('%A'))
puts test_switch('XXX')
