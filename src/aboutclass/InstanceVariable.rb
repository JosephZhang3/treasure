person1 = "Tim"
# 这里dup是“深度克隆”的语义
person2 = person1.dup
person1[0] = "J"
puts "person1 is #{person1}"
puts "person2 is #{person2}"

person3 = "Joseph"
person4 = person3
# 冻结实例对象，把变量引用的实例改成不可变
person3.freeze
# person4[0] = "x"