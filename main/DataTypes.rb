# 数组中的元素可以是不同的类型
a = [2, 'dog', 3.1415]
puts a[0]
puts a[1]
puts a[2]
# 用nil而不是null填充，nil只能作为指针变量的值. 代表这个指针变量不指向内存中的任何空间
a[2] = nil
print a
puts


# %w 限定数组中的元素只能是字符串，如果类型全部相同，则用空格而不是逗号分隔
b = %w[first second five infinity]
print b
print "\n"


# 迭代 Hash 中的 entry 键值对。想想Java写同样的逻辑有多啰嗦！
person = {name: 'johnson', height: '167cm'}
person.each do |key, value|
  puts "#{key} is #{value}"
end


# 类似java中的HashMap存储键值对
my_asset = Hash.new(0)
my_asset = {
  'thinkpad computer' => '4500',
  'iphonePrice' => 4800,
  'house' => '-750000',
  'books and others' => 'can not realize'
}
# 使用中括号属性法直接取值，而不是调用get方法
print my_asset['iphonePrice']
print "\n"
# 打印不存在的属性的值，输出空白，注意不是 nil
print my_asset['car']
print "\n"


# 初始化所有key-value的value为0
counter = Hash.new(0)
# 打印得到 0
print counter['noexist']
print "\n"
# 给 key：noexist 设置 value：1
counter['noexist'] = counter['noexist'] + 1
print counter['noexist']
print "\n"
