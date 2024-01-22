# 鞄の合計代金

INPUT1 = <<~"EOS"
300
11
EOS

INPUT2 = <<~"EOS"

EOS

def solve(input)
  a, b = input.split.map(&:to_i)
  total = a * b
  puts total
end

solve(INPUT1)
# solve(STDIN.read)