# 大量出店

def calc_unprofitable_stores(n, m, a, b, c, sales)
  unprofitable_stores = 0
  sales.each do |sold|
    total_profit = sold * c
    total_cost = a + (b * m)
    unprofitable_stores += 1 if total_profit < total_cost
  end
  unprofitable_stores
end

n, m = gets.split.map(&:to_i)
a, b, c = gets.split.map(&:to_i)
sales = n.times.map { gets.to_i }

puts calc_unprofitable_stores(n, m, a, b, c, sales)