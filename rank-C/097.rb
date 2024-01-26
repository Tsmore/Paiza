# プレセント応募企画の実施

# 入力で読み込んだ文字列を空白で分解(`split`)
# 分割した文字列を整数に変換(`map(&:to_i)`)
n, x, y = gets.split.map(&:to_i)

# 1から`n`までの数値をループ(`1..n`)
# 繰り返す整数は`i`に格納
(1..n).each do |i|
  # 入力された整数が`i`で割り切れるか判定
  a_winner = i % x == 0
  b_winner = i % y == 0

  # 結果の出力
  if a_winner && b_winner
    puts 'AB'
  elsif a_winner
    puts 'A'
  elsif b_winner
    puts 'B'
  else
    puts 'N'
  end
end