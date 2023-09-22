require 'pathname'

# 读取输出每行
File.open(File.dirname(__FILE__) + '/HelloWorld.rb', "r") do |file|
  # puts file.read()
  # puts file.readline()
  # puts file.readchar()
  file.readlines.each { |line|
    puts line
  }
  file.close
end

# 在结尾追加一行
File.open(File.dirname(__FILE__) + '/HelloWorld.rb', "a") do |file|
  file.write("\nappend one line")
  file.close
end

=begin
File.open(File.dirname(__FILE__) + "/FileForTest.html", "w") do |file|
    file.write("<h1>write a title</h1>")
end
=end

# append (to tail)
=begin
File.open(File.dirname(__FILE__) + "/FileForTest.html", "a") do |file|
    file.write("\nThis is a new line")
end
=end