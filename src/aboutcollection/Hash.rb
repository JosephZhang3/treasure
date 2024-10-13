# 类似java中的HashMap存储键值对
my_asset = {
  'thinkpad computer' => '4500',
  'iphonePrice' => 4800,
  'house' => '-750000',
  'books and others' => 'can not realize',
  :special => 'spec'
}

# 使用中括号属性法直接取值，而不是调用get方法。像JavaScript
print my_asset['iphonePrice']
print "\n"
puts my_asset[:special]
# 打印不存在的属性的值，输出空白，注意不是 nil
print my_asset['car']
print "\n"

# 初始化所有key-value的value为0
counter = Hash.new(0)
print counter['noexist'] # 输出 0
print "\n"
# 创建一个 K-V 映射
counter['noexist'] = counter['noexist'] + 1
print counter
print "\n"

# 当用 : 而不是 => 分隔key和value时，初始化得到的hash的key都是symbol符号
family = {
  'me': 'jianghao.zhang',
  'age': 30,
  nil: 'val of nil key',
  # nil: 'other' #  警告 key nil is duplicated and overwritten
}
p family

# key可以不用引号包围
fruits = {
  apple: "red",
  pear: "yellow"
}
p fruits

firstname = "Joseph"
lastname = "Zhang"
# 从 ruby3.1 版本开始，如果 key symbol 和它对应的value的变量同名，则可以省略不写value
user = { firstname:, lastname: }
p user

# 解析JSON
data = {
  mcu: [
    { name: "Iron Man",
      year: 2010,
      actors: ["Robert Downey Jr.", "Gwyneth Paltrow"]
    }
  ]
}
p data.dig(:mcu, 0, :actors, 1)
p data.dig(:ucm, 0, :actors, 1) == nil