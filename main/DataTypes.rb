# 全局变量
$global_var = "global foo"
# 局部变量
@instance_var = "local bar"
puts "#{$global_var}, #{@instance_var}"

name_ = 'jianghao.zhang'
age = 27
istall = false
puts istall
flaws = nil
puts flaws

# execute following statement, you will get : undefined method '+' for nil:NilClass, just like NPE in Java
# puts flaws + ' exists ?'
