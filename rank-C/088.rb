# RPGでお買い物

# 道具の数nとそれぞれの価格
n = gets.to_i
prices = gets.split.map(&:to_i)
# 所持金の数tと注文回数q
t, q = gets.split.map(&:to_i)

q.times do
  # 道具の番号xとその注文個数k
  x, k = gets.split.map(&:to_i)
  # それぞれの道具の合計金額を求める
  cost = prices[x - 1] * k
  # 所持金tから合計金額costを引く(所持金よりcostが低い場合のみ)
  t -= cost if t >= cost
end

puts t