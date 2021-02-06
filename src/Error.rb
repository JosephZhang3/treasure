nums = [6,8,9]
begin
nums['what']
# customize Error
# rescue ZeroDivisionError
# 	puts 'divided by zero'
rescue TypeError => e
	puts e
end