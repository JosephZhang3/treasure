# while loop
index = 1
while index <= 5
  print index
  index = index + 1 # ruby 中没有 var++  var-- 写法
end
puts
# ++var --var 这样的写法不起作用
puts index # 打印 6
stuff = ++index
puts stuff # 同样打印 6

# for loop
puts '迭代从0到4'
for num in 0..4
  print num
end
puts

puts 'for迭代字母a到e'
letter = ['a', 'b', 'c', 'd', 'e']
for l in letter
  print l
end

puts "\nloop迭代字母a到e"
long_enum = letter.to_enum
loop do
  print long_enum.next
end

puts "\neach方法迭代字母a到e _1表示取 {} block块的第一个参数"
letter.each { print _1 }
puts

# 1到100之和
sum = 0
(1..100).each do |elem|
  sum += elem
end
puts '计算1到100之和 ' + sum.to_s + "\n\n"

# 迭代 Hash 中的键值对。想想Java写同样的逻辑有多啰嗦！
puts '迭代hash数据结构'
person = { name: 'johnson', height: '167cm' }
person.each do |key, value|
  puts "#{key} is #{value}"
end
puts

puts '幂运算，多次乘自身，5^3'
# 使用 Block 块回调方法实现
def pow(base_num, pow_num)
  result = 1
  pow_num.times { || result *= base_num }
  result
end
puts pow(5, 3)

# 使用 do while 内置循环结构实现
def pow_v2(base_num, pow_num)
  result = 1
  (result *= base_num; pow_num -= 1) while pow_num > 0
  result
end

p pow_v2(5, 3)
