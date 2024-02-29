# 【2021年Xmas問題】ラッキーデイ

x = gets.chomp
count = 0


# 365日の中でラッキーデイxが含まれている日数をカウント
(0..364).each do |day|
  if day.to_s.include?(x)
    count += 1
  end
end

puts count