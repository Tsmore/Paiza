# 枠で囲む

def decorate(str)
  # `+`の文字を`str`の長さより2つ多く作成(`length`メソッドで文字数を返す)
  border = '+' * (str.length + 2)
  puts border
  # 入浴した文字`str`の両サイドに`+`を加えて出力
  puts "+#{str}+"
  puts border
  # `puts border`を上下に記述し枠で囲む
end

input = gets.chomp
decorate(input)