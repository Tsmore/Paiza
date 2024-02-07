# 暴風域にいますか？

# 台風の中心座標と半径の読み込み
xc, yc, r1, r2 = gets.split.map(&:to_i)

# 人数の読み込み
n = gets.to_i

# それぞれの座標に対する処理
n.times do
  # 一人ずつの座標の読み込み
  x, y = gets.split.map(&:to_i)
  # ユークリッド距離の公式(`\sqrt{(x - xc)^2 + (y - yc)^2}`)の利用
  # `Math.sqrt`で平方根を計算
  distance = Math.sqrt((x- xc) ** 2 + (y -yc) ** 2)

  # `r1`と`r2`の間にいるか求める
  if r1 < distance && distance < r2
    puts "yes"
  else
    puts "no"
  end
end