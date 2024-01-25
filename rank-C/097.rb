# プレセント応募企画の実施

n, x, y = gets.split.map(&:to_i)

(1..n).each do |i|
  a_winner = i % x == 0
  b_winner = i % y == 0

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