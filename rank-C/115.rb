# 渋滞の距離

# 普通に記述したらこうなった
# n, m = gets.split.map(&:to_i)

# total_congestion = 0

# (n - 1).times do
#   distance = gets.to_i
#   total_congestion += distance if distance <= m
# end

# puts total_congestion

# Paiza用に記述したやつ
INPUT1 = <<~"EOS"
5 10
5
6
25
4
EOS

INPUT2 = <<~"EOS"
4 30
30
10
40
EOS

def solve(input)
  data = input.split("\n")
  n, m = data.shift.split.map(&:to_i)

  total_congestion = 0

  (n - 1).times do
    distance = data.shift.to_i
    total_congestion += distance if distance <= m
  end

  puts total_congestion
end

solve(INPUT1)

# これがパイザ用
# solve(STDIN.read)