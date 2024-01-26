# レストランのメニュー

def match_menu(dish, item)
  # 条件演算子(`? :`)を利用し"Yes"か"No"を返す
  item.include?(dish) ? "Yes" : "No"
end

# gets.chompで文字列として読み込み末尾の改行文字を取り除く
dish = gets.chomp
# gets.to_iで整数に変換
n = gets.to_i
# gets.splitで入力を空白で分割して文字列の配列に変換
item = gets.split

puts match_menu(dish, item)