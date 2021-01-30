# 迭代 Hash 中的 entry 键值对。想想Java写同样的逻辑有多啰嗦！
person = {name: 'johnson', height: '167cm'}
puts person
person.each do |key, value|
  puts "#{key} is #{value}"
end


# 类似java中的HashMap存储键值对
my_asset = Hash.new(0)
my_asset = {
  'thinkpad computer' => '4500',
  'iphonePrice' => 4800,
  'house' => '-750000',
  'books and others' => 'can not realize',
  :special => 'spec'
}
# 使用中括号属性法直接取值，而不是调用get方法
print my_asset['iphonePrice']
print "\n"
puts my_asset[:special]
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


family = {
	'me': 'jianghao.zhang',
	nil: 'wife?',
	# nil: 'other' #  警告 key nil is duplicated and overwritten
}
puts family