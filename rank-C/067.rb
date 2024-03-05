# 【ハッカー入門コラボ問題】数字の調査

n, x = gets.split.map(&:to_i)

# `to_s(2)`で二進数表現＋文字列に変換
binary = x.to_s(2)

n.times do
  # 二進数で知りたい各位の位置を受け取る
  k = gets.to_i
  # 右からの位置に変更するために`[-k]`にする(末尾からk番目)
  # `binary`より大きな数字の場合に'0'を返す(エラー回避にもなる)
  puts binary[-k] || '0'
end