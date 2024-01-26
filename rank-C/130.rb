# 繰り返し学習

# 問題数の取得
n = gets.to_i

# 3週目に解く問題の番号を保持する配列
exercise_try_again = []
# 問題数`n`の数だけ正誤判断
n.times do |i|
  # 1週目と2周目の正誤状況を取得
  first_try, second_try = gets.split
  # どちらかで不正解だった問題の番号を配列に追加
  if first_try == 'n' || second_try == 'n'
    # `<<`で左の配列に右側の要素を追加
    # `i + 1`なのはrubyの配列が0から始まるが問題は1番目からのため
    exercise_try_again << i + 1
  end
end

# `size`メソッドで再トライする問題の数を出力
puts exercise_try_again.size
# 再トライする問題の番号を`each`文で出力
exercise_try_again.each do |number|
  puts number
end
