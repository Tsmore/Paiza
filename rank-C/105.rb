# カードのスコア

n = gets.to_i
cards = gets.split.map(&:to_i)

# カードをグループに分けて最大の数字を探してその合計を足す
def calc_total_score(cards)
  # `sort!`でcardsを昇順にし!で配列自体を変更
  cards.sort!
  # 合計数を保持
  total_score = 0
  # それぞれのグループの最大数を保持(一番最初の配列を初期で保存)
  group_maximum_score = cards[0]
  # ここで２枚目から最後の数までをループ
  (1...cards.size).each do |i|
    # 前後のカードの数字が１じゃなかったら新規グループ
    if cards[i] - cards[i - 1] != 1
      # 現在のグループの最大スコアを代入
      total_score += group_maximum_score
      group_maximum_score = cards[i]
    else
      group_maximum_score = cards[i]
    end
  end
  # 西郷に合計する
  total_score += group_maximum_score
  total_score
end

puts calc_total_score(cards)