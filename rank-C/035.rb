# 試験の合格判定

# 受験者の人数
n = gets.to_i
pass_count = 0

n.times do
  # 文理区分と5教科の点数
  input = gets.split
  # 文理区分
  type = input[0]
  # 5教科の点数
  scores = input[1..5].map(&:to_i)

  # 総合得点
  total_score = scores.sum
  # 理系の合計得点
  science_score = scores[1] + scores[2]
  # 文系の総合得点
  liberal_score = scores[3] + scores[4]

  # 総合得点が350点以上かつ文理160点以上だと合格
  if total_score >= 350
    if (type == "s" && science_score >= 160) || (type == "l" && liberal_score >= 160)
      pass_count += 1
    end
  end
end

puts pass_count




# 全科目の合計得点が 350 点以上
# 理系の受験者の場合は理系 2 科目 (数学、理科) の合計得点が 160 点以上
# 文系の受験者の場合は文系 2 科目 (国語、地理歴史) の合計得点が 160 点以上
# 受験者それぞれの各科目の点数が入力されるので、何人2段階選抜を通過できるかを求めてください。