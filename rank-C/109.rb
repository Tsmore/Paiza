# IDを登録順に並べよう

n = gets.to_i

# 新規配列(`user_ids`)にn回分ユーザーIDを受け取り格納
user_ids = Array.new(n) { gets.chomp }

# ユーザーIDを数字にもとにソート
# [/\d+/]は1つ以上の数字にマッチ(1つ以上の連続する数字)
# \dは0〜9にマッチするメタ文字
# +で直前の文字が1回以上繰り返される場合にマッチ
sorted_user_ids = user_ids.sort_by do |user_id|
  user_id[/\d+/].to_i
end

sorted_user_ids.each do |user_id|
  puts user_id
end