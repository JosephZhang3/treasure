class Employee
	def work
		puts 'employee can work'
	end
end

class Manager < Employee
	def draw_cake
		puts 'manager can draw cake'
	end
end

m = Manager.new
m.work
print 'but also, if be a '
m.draw_cake
