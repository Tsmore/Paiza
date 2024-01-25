# ハンドルネームの生成

def create_handlename(str)
  # 母音を代入
  vowels = "aiueoAIUEO"
  # charsで文字列を配列にしてrejectで{...}の条件を評価(偽の要素のみ取得)
  # vowels.include?(char)で配列にvowels(母音)があれば排除
  handle = str.chars.reject { |char| vowels.include?(char) }.join
  handle
end

name = gets.chomp
puts create_handlename(name)