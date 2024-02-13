# ログのフィルター

n = gets.to_i

g = gets.chomp

logs = Array.new(n) { gets.chomp }

important_logs = logs.select { |log| log.include?(g) }

if important_logs.empty?
  puts "None"
else
  important_logs.each { |log| puts log }
end