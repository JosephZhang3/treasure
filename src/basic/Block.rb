#!/usr/bin/env ruby

def verbose_greet(name = 'absent', statement)
  puts name
  yield(name, statement)
end

# 使用 Block {} 和 yield 关键字实现类似 JavaScript 的以函数作参数然后回调此函数
verbose_greet('Joseph', 'I\'ve done programming.') do |person, phrase|
  puts "#{person} says: #{phrase}"
end