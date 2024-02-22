# じゃんけんの結果

# じゃんけんの判定(アリスとボブ)
def judge(a, b)
  # 引き分け
  if a == b
    0
  # アリスの勝ちの3パターン
  elsif (a == 'G' && b == 'C') || (a == 'C' && b == 'P') || (a == 'P' && b == 'G')
    1
  # アリスの負け
  else
    0
  end
end

# じゃんけんの回数の入力
n = gets.to_i
wins = 0

# 回数分の勝敗の加算(アリスが勝った時)
n.times do
  # アリスとボブの手の入力
  a, b = gets.chomp.split
  # アリスが勝った場合に1ずつ加算
  wins += 1 if judge(a, b) == 1
end

puts wins