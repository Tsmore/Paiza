# クラス委員選挙

n = gets.to_i

# 投票結果を格納するハッシュの初期化
votes = Hash.new(0)

# 生徒全員分の投票を繰り返す
n.times do
  # 改行文字の削除となまえの読み込み
  name = gets.chomp
  # その名前の投票数を1ずつ増やす
  votes[name] += 1
end

# `winner`の中に最も投票数が多かった人の名前を格納
# `max_by`メソッドで最も投票数が多い人を探す
# `{ |name, count| count }`でハッシュの要素(キーと値)を`max_by`に渡す
# (`{ |suzuki, 3 }`)みたいになる
# `.first`で配列の最初の要素を返す(今回だと名前)
winner = votes.max_by { |name, count| count }.first

puts winner

# `.last`で配列の最後の要素を返すこともできる

# 配列のインデックスで直接参照することも可能
# `.first`なら(`[0]`)
# winner = votes.max_by { |name, count| count }[0]
# `.last`なら(`[1]`)
# winner = votes.max_by { |name, count| count }[1]