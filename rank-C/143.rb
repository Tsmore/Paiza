# ファイル名の統一

s = gets.chomp

# # `gsub`メソッドを利用し第一引数で指定したパターンを第二引数に変換
# # `/-+/`の+で直前の文字が1回以上繰り返す(2つ以上ある場合に利用できる)
results = s.gsub(/-+/, '-')

puts results

# `scan`メソッドを利用した場合
# `scan`でマッチした部分を探すことはできるけど実際の置換は`gsub`メソッドで行う
# 結果`gsub`メソッドを利用するのが早いし記述も簡潔

# s = gets.chomp

# hyphens_matched = s.scan(/-+/)
# if hyphens_matched.any?
#   result = s.gsub(/-+/, '-')
#   puts result
# else
#   puts s
# end