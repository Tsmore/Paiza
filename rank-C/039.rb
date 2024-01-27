# 古代の数式

def calc_numbers(equation)
  # 入力された文字を`+`で分けて`map`メソッドで10進数に変換
  numbers = equation.split('+').map do |n|
    # `n`で取得した`<`を10に
    tens = n.count('<') * 10
    # `n`で取得した`/`は1に
    ones = n.count('/')
    # 最後に`tens`と`ones`の数を足す
    tens + ones
  end
  numbers.sum
end

input = gets.chomp
puts calc_numbers(input)