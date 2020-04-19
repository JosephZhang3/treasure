puts 'ruby nice to meet you!'

sum = 0
i = 1
(1..100).each do|elem|
  sum += i
  i += 1
end
puts sum
