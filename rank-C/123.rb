# 節分ロボット

# 参加人数
n = gets.to_i
ages = []
# 参加人数分の年齢を格納
n.times do
  ages << gets.to_i
end

# 命令の数
m = gets.to_i
commands = []
# 各命令を格納
m.times do
  commands << gets.split.map(&:to_i)
end

# 参加者の持つ豆の初期化
beans = Array.new(n, 0)

# A_i番目からB_i番目の参加者に対してC_i個の豆を配る
commands.each do |a, b, c|
  (a-1...b).each do |i|
    # 参加者(i)の豆の数を計算
    # 豆の合計数(`beans[i] + c`)と(`ages[i]`)を比較
    # `.min`で最小の数を求める
    beans[i] = [ages[i], beans[i] + c].min
  end
end

beans.each do |bean|
  puts bean
end