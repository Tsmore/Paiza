# 【キャンペーン問題】下桁ルール

x, y = gets.split.map(&:to_i)

# ボブとアリスの点数を足して1の位を計算するメソッド
def sum_numbers(score)
  # `degits`メソッドで与えられた数字を1桁ずつ分解して配列を返す
  # `sum`メソッドで配列内の数字を合計
  sum = score.digits.sum
  # 10で割ったあまりを求めることで1桁目を返す
  sum % 10
end

bob_score = sum_numbers(x)
alice_score = sum_numbers(y)

if bob_score > alice_score
  puts "Bob"
elsif bob_score < alice_score
  puts "Alice"
else
  puts "Draw"
end