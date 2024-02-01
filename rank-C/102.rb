# 行きたいライブのスケジュール

m = gets.to_i
# `Array.new(31)`で新しい31日分の配列を作成し初期化(`false`)
a_lives = Array.new(31, false)
m.times do
  # ライブがある日
  day = gets.to_i
  # 配列のインデックスが0から始まるから`day - 1`
  a_lives[day - 1] = true
end

n = gets.to_i
b_lives = Array.new(31, false)
n.times do
  day = gets.to_i
  b_lives[day - 1] = true
end

# `schedule`配列を31日分'x'
schedule = Array.new(31, 'x')
# 被った際にバンドAから優先するために最後に見たバンドを'B'にする
last_band = 'B'


(0...31).each do |day|
  # ライブが被った場合
  if a_lives[day] && b_lives[day]
    # 証券式 ? 真の場合 : 偽の場合で振り分け
    # `'A' ? 'B' : 'A'`で`last_band`が'A'なら'B'に行く
    last_band = last_band == 'A' ? 'B' : 'A'
    schedule[day] = last_band
  elsif a_lives[day]
    schedule[day] = 'A'
  elsif b_lives[day]
    schedule[day] = 'B'
  end
end

schedule.each do |day|
  puts day
end