# frozen_string_literal: true

# 定义 block 接受什么参数，执行什么行为
def verbose_greet(statement, name = 'absent-name')
  puts "#{name} - #{statement}"
  yield(name, statement)
end

# { ... } 之间是block体
# do ... end 之间也是block体
verbose_greet('Joseph', 'one-state') do |n, s|
  puts "DO YIELD #{n} : #{s}"
  puts 'DONE YIELD A'
  puts
end

verbose_greet('Phoebe', 'two-state') do |n, s|
  puts "DO YIELD #{n} : #{s}"
  puts 'DONE YIELD B'
  puts
end

# 不传首参
verbose_greet('one-state') do |n, s|
  puts "DO YIELD #{n} : #{s}"
  puts 'DONE YIELD C'
  puts
end

def two_times
  yield
  yield
end
two_times { puts 'hello' }

def fib_up_to(max)
  i1 = 1
  i2 = 1
  while i1 <= max
    # i1 通过 yield 传递给块
    yield i1
    i1, i2 = i2, i1 + i2
    # 1, 1
    # 1, 2
    # 2, 3
    # 3, 5
    # 5, 8
    # 8, 13
    # 13, 21
  end
end

# 变量f接受传递给yield的值，然后通过yield传递给块
fib_up_to(1000) { |f| print f, ' ' }
puts

# p 是按连带引号都原样打印，不渲染转义字符(把转义字符按其本身打印)，自带换行
p 'p some stuff\t'
p "p some stuff\n"
# print不换行打印，单引号内不渲染转义字符
print('print\nmap')
puts
# 双引号内渲染转义字符
print("print\nmap")
puts

# each迭代器的作用: yield successive elements
[1, 3, 5].each { |i| puts i }
puts

# array contains find method
class Array
  def find
    each do |v|
      return v if yield(v)
    end
    nil
  end

  def map
    result = []
    each do |v|
      result << yield(v)
    end
    result
  end
end

result_of_find = [1, 3, 5, 7, 9].find { |num| num == 7 }
puts "result_of_find: #{result_of_find}"

result_of_map = %w[H A L].map { |x| x.succ }
puts "result_of_map: #{result_of_map}"

f = File.open('./Arrays.rb')
f.each.with_index do |line, index|
  puts "Line #{index} is: #{line}" if index <= 9
end
f.close

# reduce分别乘指定数，然后把结果聚合相乘
# (2*4)*(3*4)*(5*4)*(7*4) = 840
reduce_result = [2, 3, 5, 7].reduce(4) { |product, element| product * element }
puts reduce_result

puts '*****Use block as object*****'
# 将block作为函数对象（传递行为）
class ProcExample
  # & 表示引用一个语言概念比如block
  def pass_in_block(&action)
    # 将传入的“行为”以stored_proc符号保存在类实例中
    @stored_proc = action
  end

  def use_proc(param)
    @stored_proc.call(param)
  end
end

eg = ProcExample.new
eg.pass_in_block { |param| puts "The param is #{param}" }
eg.use_proc(99)

def create_block_object(&block)
  block
end

bo = create_block_object { |param| puts "You called me with #{param}" }
bo.call(99)
bo.call('cat')

bo2 = proc { |param| puts "<V2> You called me with #{param}" }
bo2.call(99)
bo2.call('cat')

puts '*****Blocks are closures*****'
def power_proc_generator
  value = 1
  -> { value += value }
end
puts power_proc_generator.call
puts power_proc_generator.call
puts power_proc_generator.call
puts
# power_proc_generator 方法返回一个闭包对象pp，闭包中的变量value在本文件范围内存活
pp = power_proc_generator
puts pp.call # 本次call执行后，闭包变量value变成2
puts pp.call # 本次call执行后，闭包变量value变成4
puts pp.call # 本次call执行后，闭包变量value变成8

puts '*****lambdas*****'
proc1 = ->(arg1, arg2) { puts "In proc1 with #{arg1} and #{arg2}" }
proc1.call 'bee', 'elk'
puts

def my_customize_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_customize_if(
    val < 2,
    -> { puts "#{val} is less than 2" },
    -> { puts "#{val} is greater than 2 or equals 2" }
  )
end

def my_while(cond, &body)
  body.call while cond.call
end

a = 0
my_while(-> { a < 3 }) do
  puts "now is #{a}"
  a += 1
end

puts '*****enumerators*****'
h = { dog: 'canine', fox: 'vulpin' }
enum_h = h.to_enum(:reverse_each)
print "#{enum_h.next}\n"
print "#{enum_h.next}\n"

long_enum = ('a'..'z').to_enum
loop do
  puts "LOOP #{long_enum.next}"
end

result = []
%w[a b c].each_with_index { |item, index| result << [item, index] }
p result

result = []
'Joseph'.each_char.with_index { |item, index| result << [item, index] }
p result

result = []
# 比Java的stream map简练得多
result = 'Zhang'.each_char.with_index.map { |item, index| [item, index] }
p result

puts '每3个元素分成一片'
enum_in_threes = (1..20).enum_for(:each_slice, 3) # 用Java写需要多少行 :)
enum_in_threes_result = enum_in_threes.to_a.to_s
puts enum_in_threes_result

puts "\n用enumerator枚举器生成数值"
triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  puts 'Executed at here'
  loop do
    print "begin number:#{number}, count:#{count}"
    number += count
    count += 1
    # 第10次执行 yield 方法就是第10次执行 triangular_numbers.next，
    # 10.times 迭代终止导致本方法的执行立即马上终止，所以第10次不会打印“after num...“ 了
    yielder.yield(number) # 返回的是最后一个出现的变量number
    puts "after number:#{number}, count:#{count}"
  end
end

10.times { print '  nubmer-changed-to:', triangular_numbers.next, '  ' }
puts

puts "\n用enumerator枚举器生成数值，简捷写法"
triangular_numbers = Enumerator.produce([1, 2]) do |number, count|
  [number + count, count + 1]
end

10.times { print triangular_numbers.next.first, '  ' }
puts
# 10 time    number:1   count:2
# 9 time     number:3   count:3
# 8 time     number:6   count:4
# 7 time     number:10  count:5
# ...
# 1 time     number:55  count:11

# 使用枚举器实现无限的流
class InfiniteStream
  def all
    # 此方法唯一的作用就是生成连续的数值
    Enumerator.produce(0) do |num|
      # print "before num: #{num}  "
      num += 1
      # formatted_str = "after num: %d \n" % num
      # print formatted_str
      num
    end.lazy
    # lazy表示 the last one in the enumerator chain takes values from the one before it
    # 每请求一次，就根据指定的处理逻辑如“select”判断这个num是不是3的倍数，然后把num放入枚举器或者抛弃，
    # 下一次请求时，会接手上一次请求生成的枚举器中的全部num值，根据指定的处理逻辑如“select”...循环往复
    # 最终，达到10次请求后，返回枚举器中的全部值
  end
end
puts "\n连续10个数"
p InfiniteStream.new.all.first(10)

puts "\n3的倍数"
# select { (_1 % 3).zero? } 表示遇到3的倍数的值则返回这个目标值，first(10) 表示取10个目标值才结束
p InfiniteStream.new.all.select { (_1 % 3).zero? }.first(10)

def palindrome?(num)
  num = num.to_s
  num == num.reverse
end
puts "\n3的倍数 and 回文数"
p InfiniteStream.new.all.select { (_1 % 3).zero? }.select { palindrome?(_1) }.first(10)
