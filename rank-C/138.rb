# 反復横跳び大会

n = gets.to_i

records = []

n.times do
  records << gets.to_i
end

# 記録を降順にしてソート(`sort`メソッド)
sorted_records = records.sort.reverse

# ソートされた記録から順位を決定
# (`.index(record) + 1`)で0番目を1番目になるように調整
records.each do |record|
  rank = sorted_records.index(record) + 1
  puts rank
end