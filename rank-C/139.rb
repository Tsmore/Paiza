# 誤発注

def find_missing_products(n, recieved_products)
  
  # 1からnまでの全製品番号を配列で作成(`to_a`でarray)
  all_products = (1..n).to_a
  # 届いた製品から重複を削除(`uniq`メソッド)
  unique_recieved_products = recieved_products.uniq
  # 足りない製品を引き算
  missing_products = all_products - unique_recieved_products
  # 足りない製品の数を返す(`length`メソッド)
  missing_products.length
end

n = gets.chomp.to_i
recieved_products = []
n.times do
  recieved_products << gets.chomp.to_i
end

puts find_missing_products(n, recieved_products)