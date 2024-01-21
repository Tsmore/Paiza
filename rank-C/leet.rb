# Leet文字列

INPUT1 = <<~"EOS"
PAIZA
EOS

INPUT2 = <<~"EOS"
ALANTURING
EOS

def to_leet(str)
  str.chars.map do |char|
    case char
    when "A" then "4"
    when "E" then "3"
    when "G" then "6"
    when "I" then "1"
    when "O" then "0"
    when "S" then "5"
    when "Z" then "2"
    else char
    end
  end.join
end

input = gets.chomp
puts to_leet(input)