# カロリーの計算

INPUT1 = <<~"EOS"
2
EOS

INPUT2 = <<~"EOS"

EOS

def solve(input)
  n = input.to_i
  calorie = n * 540
  puts calorie
end

solve(INPUT1)
# solve(STDIN.read)