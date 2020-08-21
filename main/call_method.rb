def say_goodnight(name)
#  return "Good night,"+name;
#return "Good night,#{name.capitalize}"
  "Good night,#{name.capitalize}"
end

puts say_goodnight("zebulon")

# 全局变量
$global_var = "foo"
# 局部变量
@instance_var = "bar"
puts "#{$global_var},#{@instance_var}"
