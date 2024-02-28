# 合言葉

s = gets.chomp
t = gets.chomp

# sとtが同じ場合と全く違う文字列の場合は"NO"を出力
# sとtを`sort`で並び替えたときに同じ文字であれば"YES"を出力
if s == t
  puts "NO"
elsif s.chars.sort == t.chars.sort
  puts "YES"
else
  puts "NO"
end
