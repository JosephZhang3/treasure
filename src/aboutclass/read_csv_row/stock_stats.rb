# frozen_string_literal: true

require_relative 'csv_reader' # 引用 csv_reader.rb 文件

# cd /path/read_csv_row
# ruby stock_stats.rb a.csv

reader = CsvReader.new

ARGV.each do |csv_file_name|
  $stderr.puts "Processing #{csv_file_name}..."
  # 调用reader实例的方法
  reader.read_in_csv_data(csv_file_name)
end

# 将 total_price_in_stock() 方法作为类型的属性，然后使用插值语法调用，精炼
puts "Total price is #{reader.total_price_in_stock}"