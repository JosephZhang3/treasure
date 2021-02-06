class Book
	attr_accessor :title, :author, :price

    # 注意：ruby不允许重载构造方法，只能存在一个构造方法
	def initialize(title,author)
		puts 'creating a book'
		@title = title
		@author = author
	end

    # 2021年，一本书超过50，普通人就会觉得贵
	def is_expensive
		if @price > 50
			return true
		end
		return false
	end
end

book1 = Book.new('Ruby','Martz')
puts book1.title
puts book1.author

book1.price = 49
puts book1.is_expensive
book1.price = 70
puts book1.is_expensive