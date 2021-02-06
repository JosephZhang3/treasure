# 数组中的元素可以是不同的类型
a = [2, 'dog', 3.1415]
puts a[0]
puts a[1]
puts a[2]

# 用nil而不是null填充，nil只能作为指针变量的值. 代表这个指针变量不指向内存中的任何空间
a[2] = nil
print a
puts

# 输出索引位置 i 到 j （包含i、j）的所有元素
print a[1,2]
puts

# %w 限定数组中的元素只能是字符串，如果类型全部相同，则用空格而不是逗号分隔
b = %w[first second five infinity]
print b
puts

puts b.include? 'five'
puts b.include? 'dddd'