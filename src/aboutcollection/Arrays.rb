# 数组中的元素可以是不同的类型
a = [1, "dog", 3.14159, "stuff"]
# 字符串插值语法
puts "The first element is #{a[0]}"
puts a[1]
puts a[2]

# nil只能作为变量的值. 代表这个指针变量不指向内存中的任何空间
a[2] = nil
puts "数组包含nil #{a.inspect}"

# %w 限定数组中的元素只能是字符串，如果类型全部相同，则可以用空格而不是逗号分隔
b = %w[first second five infinity all_is_str]
print b
puts
puts "-----"

puts "包含 five 吗？#{b.include? 'five'}"
puts "-----"

b = Array.new
puts b.class # Array
b[0] = "s"
b[1] = "a"
print b
puts
puts "-----"

a = [1, 3, 5, 7, 9]
puts "a[-1]=#{a[-1]}, a[-2]=#{a[-2]}, a[-99]=#{a[-99]}"
puts "-----"

# 从索引-3开始，往坐标轴正方向也就是往更大的索引方向取3个元素
# 也就是取 a[-3] a[-2] a[-1]
print a[-3, 3]
puts

puts "-----"
# 取索引为 -3 -2 -1 的位置上的元素
print a[-3..-1]
puts
puts "-----"

ax = [1, 3, "cat", 9]
ax[2, 0] = "dog" # "dog"元素在索引2处被插入，0表示不替换任何元素
print ax
puts
ax[2,1]="rabbit" # "rabbit"元素替换索引位置2开始的1个元素
print ax
puts
ax[2,2]="fox" # "rabbit"元素替换索引位置2开始的2个元素
print ax
puts
puts "-----"

intarr = [1,2,3,4,5,6,7]
puts "最前4个元素"
print intarr.first(4)
puts "\n最后4个元素"
print intarr.last(4)
puts