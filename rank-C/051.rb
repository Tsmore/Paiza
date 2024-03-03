# カード並べ

# a,b,c,dの4枚のカードの数字
cards = gets.split.map(&:to_i)

# 最大スコアを保持する変数
max_score = 0

# 順列で全てのパターンを計算
cards.permutation do |perm|
  left_num = perm[0] * 10 + perm[1]
  right_num = perm[2] * 10 + perm[3]

  sum = left_num + right_num

  # `max_score`に全てのパターンの最大スコアを代入
  # 現在のスコアより大きければ更新
  max_score = sum if sum > max_score
end

puts max_score