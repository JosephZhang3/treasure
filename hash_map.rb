my_asset = Hash.new(0)

#类似java中的HashMap存储键值对
my_asset = {
  'thinkpad computer' => '4500',
  'iphone' => 4800,
  'house' => '-750000',
  'books and others' => 'can not realize'
}

#使用中括号属性法直接取值，而不是方法调用
print my_asset['iphone']
print "\n"

print my_asset['car']
print "\n"

counter = Hash.new(0)#初始化所有key-value的value为0
print counter['noexist']#打印 0
print "\n"
counter['noexist'] = counter['noexist'] + 1
print counter['noexist']#0加1后打印1
print "\n"
