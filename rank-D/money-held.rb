# 所持金の合計

INPUT1 = <<~"EOS"
180
150
EOS

INPUT2 = <<~"EOS"
300
11
EOS

def solve(input)
  a, b = input.split.map(&:to_i)
  total = a + b
  puts total
end

solve(INPUT1)
# solve(STDIN.read)