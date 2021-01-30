def say_goodnight(name)
  "Good night,#{name.capitalize}"
end
# ruby默认只会返回方法最后一行语句表达式的值
puts say_goodnight("zebulon")


# 全局变量
$global_var = "global foo"
# 局部变量
@instance_var = "local bar"
puts "#{$global_var}, #{@instance_var}"


# 给方法参数设置缺省值
def testDefaultParams(name='anonymity',age=-1)
	puts 'Hi ' + name + ', your age are ' + age.to_s
end
testDefaultParams


# 返回多个值
def multiRet
	return 33,44
end
puts multiRet[0] # display 33
puts multiRet[1] # display 44