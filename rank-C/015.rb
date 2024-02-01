# ポイントカードの計算

n = gets.to_i
receipts = n.times.map {gets.split.map(&:to_i)}

total_points = 0
receipts.each do |date, price|
  # `date`を文字列に変換して特定の数字が含まれているかチェック
  # その日付に対するポイントの付与率
  date_str = date.to_s
  rate = if date_str.include?("3")
          0.03
        elsif date_str.include?("5")
          0.05
        else
          0.01
        end

  # 小数点切り捨て(`floor`メソッド)
  points = (price * rate).floor
  total_points += points
end


puts total_points