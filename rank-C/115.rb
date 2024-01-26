# 渋滞の距離

# 入力で読み込んだ文字列を空白で分解(`split`)
# 分割した文字列を整数に変換(`map(&:to_i)`)
n, m = gets.split.map(&:to_i)

# 操縦帯距離を保持する変数を初期化
total_congestion = 0

# 車1台分を引いてループ処理(`(n - 1).times do`)
# 車が2台なら車間距離は1のため
(n - 1).times do
  # 入力から車間距離を読み込み整数に変換(`gets.to_i`)
  distance = gets.to_i
  # 測定された車間距離`distance`が渋滞を定義する `m`以下であれば
  # `total_congestion`に加算
  total_congestion += distance if distance <= m
end

puts total_congestion
