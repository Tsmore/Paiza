# 安息の地を求めて

# ユークリッド距離の公式
# 距離 = sqrt((x2 - x1)^2 + (y2 - y1)^2)

# 工事現場のx座標a、y座標b、騒音の大きさr
a, b, r = gets.split.map(&:to_i)
# 木の数
n = gets.to_i

n.times do
  # 各木のx,y座標
  x, y = gets.split.map(&:to_i)
  # 工事現場からの距離を計算
  distance = Math.sqrt((x - a) ** 2 + (y - b) ** 2)

  # 距離がr以上かで条件分岐
  if distance >= r
    puts "silent"
  else
    puts "noisy"
  end
end