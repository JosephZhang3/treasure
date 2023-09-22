def say_goodnight(name)
  "Good night,#{name.capitalize}"
end

# ruby默认只会返回方法最后一行语句表达式的值
puts say_goodnight("zebulon")
puts say_goodnight("joseph")

# 给方法参数设置缺省值，调用方法时可以不用null值补位
def test_default_params(name = 'anonymity', age = 18)
  puts 'Hi ' + name + ', your age are ' + age.to_s
end

test_default_params

# 方法的返回结果是多个值
def multi_return_val
  a = 33
  b = 44
  c = 55
  # return a,b,c
  [a, b, c]
end

puts multi_return_val[0] # display 33
puts multi_return_val[2] # display 55

# puts "a" + 1     错误用法，字符串只能和字符串拼接，语言不能擅自定义 字符串跟数字拼接 的语义是什么