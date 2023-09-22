puts 'Enter your username:'
name = gets.chomp
# chomp()方法的作用：去除输入中包含的最后一个换行符
puts("Welcome " + name + " to here.")

puts 'Enter first number:'
first = gets.chomp.to_f
puts 'Enter second number:'
second = gets.chomp.to_f
puts first + second

while (line = gets.chomp) and line != "EOF"
  puts "one line - " + line.to_s
end