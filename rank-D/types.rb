# タイプ数の予想

INPUT1 = <<~"EOS"
1024
EOS

INPUT2 = <<~"EOS"
1
EOS

def solve(input)
  n = input.to_i
  total = n * 365
  puts total
end

solve(INPUT1)
# solve(STDIN.read)