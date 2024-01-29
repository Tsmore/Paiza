# ボールが入る箱

# この関数で箱`boxes`とボールの直径`ball_diameter`を受け取る
def find_suitable_boxes(boxes, ball_diameter)
  # ボールを収納できるからの配列
  suitable_boxes = []

  # 箱の高さ、幅、奥行きと箱の番号`index`
  boxes.each_with_index do |(height, width, depth), index|
    # ボールの直径が箱の3辺の最小値より小さいか求める
    if ball_diameter <= [height, width, depth].min
      # 入る箱の番号を`suitable_boxes`配列に追加
      suitable_boxes << index + 1
    end
  end

  suitable_boxes
end

n, r = gets.split.map(&:to_i)
# ボールの半径`r`を直径に変換
ball_diameter = r * 2

# 箱の寸法を入れるからの配列
boxes = []
# 各箱の寸法を`boxes`配列に格納
n.times do
  boxes << gets.split.map(&:to_i)
end

# ボールが入る箱をすべて出力
find_suitable_boxes(boxes, ball_diameter).each do |n|
  puts n
end