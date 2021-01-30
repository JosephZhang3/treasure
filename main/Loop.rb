# while loop
index = 1
while index <= 5
	puts index
	index = index + 1 # ruby 中没有 var++  var-- 写法
end
# ++ -- 的写法不起作用
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