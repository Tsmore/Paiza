# Leet文字列

def to_leet(str)
  # `str.chars`で文字列`char`を1文字ずつの配列に変換
  # `map`メソッドで配列の文字列にブロック内の処理
  str.chars.map do |char|
    case char
    when "A" then "4"
    when "E" then "3"
    when "G" then "6"
    when "I" then "1"
    when "O" then "0"
    when "S" then "5"
    when "Z" then "2"
    # 上記以外の文字は変換せずそのまま残る
    else char
    end
  # ここで変換した文字を`join`メソッドで1つの文字列にする
  end.join
end

input = gets.chomp
puts to_leet(input)