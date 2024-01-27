# 【40万人記念問題】黒電話

def calc_dial_distance(n)
  # ここで書く数字に対するダイヤル距離をマッピング
  distance_mapping = {
    '0' => 12, '1' => 3, '2' => 4, '3' => 5,  '4' => 6,
    '5' => 7, '6' => 8, '7' => 9, '8' => 10, '9' => 11, 
  }

  # 総距離の初期化
  total_distance = 0

  # 番号`n`の各文字に対してループ処理
  n.each_char do |char|
    # `char`が`distance_mapping`ハッシュのキーか確認
    if distance_mapping.key?(char)
      # 各数字のダイヤル距離を`total_distance`に加算
      total_distance += distance_mapping[char]
    end
  end

  # ダイヤルの往復を考慮して2倍にする
  total_distance * 2
end

input = gets.chomp
puts calc_dial_distance(input)