# 問題集

INPUT1 = <<~"EOS"
50
EOS

INPUT2 = <<~"EOS"
11
EOS

def solve(input)
  n = input.to_i
  pages = n * 100
  puts pages
end

solve(INPUT1)
# solve(STDIN.read)