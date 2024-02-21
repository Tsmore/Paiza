# 株の売買

n, c1, c2 = gets.split.map(&:to_i)
prices = n.times.map { gets.to_i }

stocks = 0
total_cost = 0

# それぞれ日の処理
prices.each_with_index do |price, i|
  # c1円以下の場合は1株購入し購入価格を引く
  if price <= c1
    stocks += 1
    total_cost -= price
  # c2円以上で持ち株があれば売却しその金額を加算
  elsif price >= c2 && stocks > 0
    total_cost += price * stocks
    stocks = 0
  end
  
  # 最終日には残っている株をすべて売却し`total_cost`に加算
  if i == n - 1 && stocks > 0
    total_cost += price * stocks
    stocks = 0
  end
end

puts total_cost