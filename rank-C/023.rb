# クジの当選番号

# 当選番号
winning_numbers = gets.split.map(&:to_i)

# くじの枚数
n = gets.to_i

n.times do
  # くじの番号
  ticket_numbers = gets.split.map(&:to_i)
  # 当選番号と一致する数字をカウント
  match_count = ticket_numbers.count { |num| winning_numbers.include?(num) }
  # その数を出力
  puts match_count
end