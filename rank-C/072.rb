# モンスターの進化


ATK, DEF, AGI = gets.split.map(&:to_i)

# 進化先のモンスター数
n = gets.to_i

evoluations = []

# 名前、攻撃力、防御、素早さの上限下限を入力で受け取る
# 名前以外は整数に変換
n.times do
  name, min_atk, max_atk, min_def, max_def, min_agi, max_agi = gets.split
  min_atk = min_atk.to_i
  max_atk = max_atk.to_i
  min_def = min_def.to_i
  max_def = max_def.to_i
  min_agi = min_agi.to_i
  max_agi = max_agi.to_i

  # 最初に受け取ったATK、DEF、AGIの全てが進化条件を満たしているか比較演算子で確認
  # 進化先があれば配列`evoluations`に格納
  # between?(min, max)を利用
  if ATK.between?(min_atk, max_atk) && DEF.between?(min_def, max_def) && AGI.between?(min_agi, max_agi)
    evoluations << name
  end
end

# 配列が空のままなら進化先なし("no evoluations")
# あれば進化先の名前を出力
if evoluations.empty?
  puts "no evolution"
end

evoluations.each { |evo| puts evo}