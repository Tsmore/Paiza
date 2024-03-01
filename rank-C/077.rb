# 【30万人記念問題】レポートの評価

# 学生の数k、レポートの問題数n
k, n = gets.split.map(&:to_i)

k.times do
  # レポートの提出日d、正解した問題数a
  d, a = gets.split.map(&:to_i)

  # 一問あたりの配点
  point_per_question = 100.0 / n

  # その生徒の得点
  score = a * point_per_question

  # 提出期限の日を基準に遅れた日数での減点
  if d > 0
    if d <= 8
      score = (score * 0.8).floor
    else
      score = 0
    end
  end

  # 点数によるグレード
  grade = if score >= 80
    "A"
  elsif score >= 70
    "B"
  elsif score >= 60
    "C"
  else
    "D"
  end

  puts grade
end