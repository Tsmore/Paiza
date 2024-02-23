# ローソク足

n = gets.to_i

prices = []

# `n`日分の価格を`prices`に格納
# 始値、終値、高値、安値の順番
n.times do
  prices << gets.split.map(&:to_i)
end

# 始値は最初の日の株価でインデックス０(１番目)
start_price = prices.first[0]
# 終値は最終日のインデックス１(２番目)
end_price = prices.last[1]
# 最高値はインデックス２(３番目)から`.max`で一番高い値段を取り出す
high_price = prices.map { |price| price[2] }.max
# 最安値はインデックス３(４番目)から`.min`で一番安い値段を取り出す
low_price = prices.map { |price| price[3] }.min

# すべての項目を出力
puts "#{start_price} #{end_price} #{high_price} #{low_price}"