class Employee
  def work
    puts 'as a employee can work'
  end
end

class Manager < Employee
  def draw_cake
    puts 'manager can draw cake'
  end
end


m = Manager.new
m.work
print 'but also, if he becomes a '
m.draw_cake
