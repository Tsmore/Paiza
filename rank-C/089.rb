# ストラックアウト

# パネルの高さと幅
h, w = gets.split.map(&:to_i)

# パネルの状態(高さh)を`states`に格納
states = []
h.times do
  states << gets.chomp
end

# 各パネルの特典を読み込み格納
points = []
h.times do
  points << gets.split.map(&:to_i)
end

# 得点の計算
score = 0
# 2重ループで全てのパネルをチェック
# `if states[i][j] == "o"`の条件式でパネルが撃ち抜かれているかチェックし加算
h.times do |i|
  w.times do |j|
    if states[i][j] == "o"
      score += points[i][j]
    end
  end
end

puts score