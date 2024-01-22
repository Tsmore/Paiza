# 取引の計算

INPUT1 = <<~"EOS"
180
150
50
EOS

INPUT2 = <<~"EOS"
300
11
311
EOS

def solve(input)
  x, y, z = input.split.map(&:to_i)
  total = x + (y - z)
  puts total
end

solve(INPUT1)
# solve(STDIN.read)