# テストの採点

n, m = gets.split.map(&:to_i)

n.times do |number|
  a, b = gets.split.map(&:to_i)
  # テストの点数`a`から欠席回数`b` * 5を引いたときにマイナスになった場合0として扱う
  # (a - b * 5)と(0)を`max`で成績がマイナスにならないように調整
  score = [a - b * 5, 0].max
  if score >= m
    puts number + 1
  end
end