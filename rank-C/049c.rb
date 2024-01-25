# 【ぱいじょ！コラボ問題】エレベーター

def calc_total_movement(log)
  # 現在の階を１
  current_floor = 1
  # 総移動回数は０
  total_movement = 0
  # 指定回数分回すeach文
  log.each do |destination_floor|
    # 総移動回数は目的の階-現在いる階（absで負の整数にならないように求める）
    total_movement += (destination_floor - current_floor).abs
    # ここで現在いる階を目的の階に変更
    current_floor = destination_floor
  end
  # 最後に動いた総数
  total_movement
end

n = gets.to_i
# map{...}でブロック内の処理を適用（n回のgets.to_i）
log = n.times.map{gets.to_i}

puts calc_total_movement(log)