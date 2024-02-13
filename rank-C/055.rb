# ログのフィルター

n = gets.to_i

g = gets.chomp

# `Array.new(n)`で新規配列作成し`n`回分{ gets.chomp }`で入力を配列に格納
logs = Array.new(n) { gets.chomp }

# 重要な文字列(`g`)を含んでいるログ(`.select`メソッド)を格納
# 条件は`{ |log| log.include?(g) }`で`log`が`g`を含んでいるか確認
important_logs = logs.select { |log| log.include?(g) }

# 重要な文字列が含まれているか確認して出力
if important_logs.empty?
  puts "None"
else
  important_logs.each { |log| puts log }
end