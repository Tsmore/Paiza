# 残り物の量

def solve(m, p, q)
  # 最初に売れた量
  sold_initially = m * p / 100.0
  # 最初に売れた残り
  remaining_after_first_sale = m - sold_initially
  # 最初に売れた残りをお惣菜にして売れた量
  sold_as_osozai = remaining_after_first_sale * q / 100.0
  # 最終的な残り
  leftover_stock = remaining_after_first_sale - sold_as_osozai
end

m, p, q = gets.split.map(&:to_i)
puts solve(m, p, q)
