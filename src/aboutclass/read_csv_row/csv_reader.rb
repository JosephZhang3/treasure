# require_relative "book_in_stock"

require 'csv' # 引入csv库，非gem
require_relative 'book_in_stock' # 引入 book_in_stock 文件

class CsvReader
  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      b = BookInStock.new(row["ISBN"], row["Price"])
      puts "Read row as book, ISBN:#{b.isbn}, prince in cents:#{b.price_in_cents}"
      @books_in_stock << b
    end
  end

  # 将方法作为属性，无参数列表
  def total_price_in_stock
    sum = 0
    @books_in_stock.each do |book|
      # 调用 BookInStock 类的 price_in_cents 方法，这个方法是属性方法
      sum += book.price_in_cents
    end
    sum / 100
  end
end