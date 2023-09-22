class Book
  attr_reader :isbn
  attr_accessor :title, :author, :price

  # 注意：ruby不允许重载构造方法，只能存在一个构造方法 initialize()
  def initialize(isbn, title, author, price)
    puts 'creating a book'
    @isbn = isbn
    @title = title
    @author = author
    @price = Float(price)
  end

  # 属性方法，取值
  # 书的价格，单位：分
  def price_in_cents
    (price * 100).round
  end

  # 属性方法，赋值
  def prince_in_cents=(cents)
    @price = cents / 100.0
  end

  # 一本书超过50就算作是“贵的”
  def is_expensive
    if @price > 50
      return true
    end
    return false
  end
end


book1 = Book.new(95001, 'Ruby', 'Martz', 0.123)
puts book1 # print memeory address of object's first byte
p book1 # print object attribute-value by format

puts book1.isbn
puts book1.title
puts book1.author
puts book1.price
puts "----------"

# Blow code is wrong, there's only reader for attr isbn, no writer.
# book1.isbn = 95009

book1.price = 49
puts book1.price_in_cents
puts book1.is_expensive
book1.price = 70
puts book1.price_in_cents
puts book1.is_expensive
puts "----------"

# judge if one object is an instance of the class or its subclass
flag = 1.is_a? Object
puts "1 是一个对象吗？" + flag.to_s
s = [1,2]
flag2 = s.is_a? Object
puts "array 是一个对象吗？" + flag2.to_s