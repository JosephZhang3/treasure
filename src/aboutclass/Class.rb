class Bird
  def say_hello
    puts "Hello World, from a class method"
  end

  protected

  def protected_one_method(a)
    puts "hit protected_one_method #{a}"
  end

  def protected_two_method(b)
    puts "hit protected_two_method #{b}"
  end

  public

  def public_one(c)
    self.say_hello
    puts "hit public_one #{c}"
  end

  def public_two(d)
    puts "hit public_two #{d}"
  end
end

def another_hello
  puts "Hello World, from a SCRIPT method"
end

# c = MyClass.new
# c.say_hello
# another_hello

# 鸡 继承 鸟
class Chicken < Bird
  def call_parent_method
    protected_one_method("1 from sub class")
    protected_two_method("2 from sub class")
  end
end

class Account
  attr_accessor :balance # TODO

  def initialize(balance)
    @balance = balance
  end

  def greater_balance_than?(otherAccount)
    @balance > otherAccount.balance
  end
end

m = Account.new(100)
n = Account.new(50)
puts "justice greater: #{m.greater_balance_than?(n)}"