a = [ 2,"dog",3.1415]
puts a[0]
puts a[1]

a[2] = nil
print a
print "\n"

b = ['first','second','five','infinity']
print b
print "\n"

# %w 表示数组中的内容均是字符串，后接花括号而不是方括号，而且要注意用空格而不是逗号分隔
c = %w{first second third}
print c
print "\n"
