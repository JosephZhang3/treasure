nums = [6,8,9]

begin
	nums['what']
	rescue TypeError => e
	puts e
end

begin
	puts 9/0
    rescue ZeroDivisionError
	puts 'divided by zero'
end