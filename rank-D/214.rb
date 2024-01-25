# 身長差

INPUT1 = <<~"EOS"
180
150
EOS

INPUT2 = <<~"EOS"
201
1
EOS

# def solve(input)
#   data = input.split("\n")
#   a = data[0].to_i
#   b = data[1].to_i
#   difference = a - b
#   puts difference
# end

# こう書いたほうが簡潔！
def solve(input)
  a, b = input.split.map(&:to_i)
  puts a - b
end

solve(INPUT1)

# パイザ提出用
# solve(STDIN.read)