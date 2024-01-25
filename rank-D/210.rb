# 年間の料金

INPUT1 = <<~"EOS"
980
EOS

INPUT2 = <<~"EOS"
100
EOS

def solve(input)
  p = input.to_i
  annual_fee = p * 12
  puts annual_fee
end

solve(INPUT1)

# パイザ提出用
# solve(STDIN.read)