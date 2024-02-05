# ハイアンドロー・カードゲーム

a, b = gets.split.map(&:to_i)

n = gets.to_i

n.times do
  a1, b1 = gets.split.map(&:to_i)

  if a1 > a
    puts "Low"
  elsif a1 < a
    puts "High"
  else
    if b1 < b
      puts "Low"
    else
      puts "High"
    end
  end
end