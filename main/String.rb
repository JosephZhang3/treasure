char_name = 'zjh'
puts 'One programmer\'s name is ' + char_name
puts char_name.upcase()

statement = ' we have 1 + 1 = 2 '
puts statement
puts statement.length()

# like contains() in Java
puts statement.include? 'have'
puts statement.include? 'they'

# 输出第 i 个索引位置的字符
puts statement[4]
# 输出从第 i 个索引位置开始的 j 个字符
puts statement[4,4]

# 输出字符(串)首次出现的索引位置
puts statement.index('1')
puts statement.index('ve')