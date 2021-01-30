puts 'Enter first number:'
f = gets.chomp().to_f
puts 'Enter second number'
s = gets.chomp().to_f
puts 'Enter the operation you want:'
o = gets.chomp().to_s

def calc(f,s,o)
	if o == '+'
		puts f + s
    elsif o == '-'
		puts f - s
	elsif o == '*'
		puts f * s
	elsif o == '/'
		puts f / s # 如果除数是 0，除法计算结果是 infinity
    else
        puts 'exist invalid parameter(s)'		
	end
end

calc(f,s,o)