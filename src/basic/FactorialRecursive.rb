# 计算阶乘，使用递归
def fact(n)
  if n == 0
    1
  else
    n * fact(n - 1)
  end
end

# 从命令行接收第一个参数
puts fact(ARGV[0].to_i)