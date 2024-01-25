# 引き落としの手数料

INPUT1 = <<~"EOS"
150
EOS

INPUT2 = <<~"EOS"
145
EOS

def solve(input)
  n = input.to_i
  money = n - 120
  puts money
end

solve(INPUT1)
# solve(STDIN.read)