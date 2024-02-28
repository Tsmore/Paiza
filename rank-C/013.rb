# 嫌いな数字

n = gets.chomp
m = gets.to_i

# 嫌いな数字が入っていない病室の番号を保存する配列
acceptable_rooms = []

m.times do
  room = gets.chomp
  # 嫌いな数字がなければ`acceptable_rooms`に代入
  unless room.include?(n)
    acceptable_rooms << room
  end
end

# `acceptable_rooms`が空なら"none"を出力
if acceptable_rooms.empty?
  puts "none"
else
  # `acceptable_rooms`があれば部屋の番号をすべて出力
  acceptable_rooms.each { |room| puts room}
end