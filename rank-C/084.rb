# 枠で囲む

def decorate(str)
  border = '+' * (str.length + 2)
  puts border
  puts "+#{str}+"
  puts border
end

input = gets.chomp
decorate(input)