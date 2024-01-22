# お餅の個数

INPUT1 = <<~"EOS"
2
7
EOS

INPUT2 = <<~"EOS"
1
1
EOS

def solve(input)
  n, m = input.split.map(&:to_i)
  amount = n * m
  puts amount
end

solve(INPUT1)
# solve(STDIN.read)