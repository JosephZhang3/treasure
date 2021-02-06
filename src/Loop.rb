# while loop
index = 1
while index <= 5
	puts index
	index = index + 1 # ruby 中没有 var++  var-- 写法
end
# ++var --var 的写法不起作用
puts index # 打印 6
puts ++index # 同样打印 6


# for loop
puts '迭代从0到4'
for num in 0..4
	puts num
end
puts '迭代字母表'
letter = ['a','b','c','d','e']
for l in letter
	puts l
end
# 迭代 Hash 中的键值对。想想Java写同样的逻辑有多啰嗦！
puts '迭代hash数据结构'
person = {name: 'johnson', height: '167cm'}
person.each do |key, value|
  puts "#{key} is #{value}"
end

def pow(base_num, pow_num)
    result = 1
    pow_num.times do |index|
    	result = result * base_num
    end
    
    return result # just is base_num ^ pow_num
end

puts pow(5,3)