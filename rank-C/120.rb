# 花のリース

n = gets.to_i
s1 = gets.chomp
s2 = gets.chomp

# `s1`の花の配列を二倍にする
s1_doubled = s1 * 2

# 2倍になった`s1_dounbled`の配列に`s2`が含まれている確認
if s1_doubled.include?(s2)
  puts "Yes"
else
  puts "No"
end