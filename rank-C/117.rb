# 大量出店

# 店舗の数`n`、営業する月数`m`
# 店舗建設費用`a`、毎月の人件費`b`、ラーメン1杯あたりの利益`c`
# そして各店舗のラーメン販売数を表す配列`sales`を引数として受け取る
def calc_unprofitable_stores(n, m, a, b, c, sales)
  #　不採算店舗をカウントする変数`unprofitable_stores`の初期化
  unprofitable_stores = 0
  # 各店舗の販売数に対してループ処理
  sales.each do |sold|
    # 各店舗の総利益の計算
    total_profit = sold * c
    # 各店舗の総投資額の計算
    total_cost = a + (b * m)
    # 総利益が総投資額を下回る場合に`unprofitable_stores`に1を加える
    unprofitable_stores += 1 if total_profit < total_cost
  end
  unprofitable_stores
end

# 入力で読み込んだ文字列を空白で分解(`split`)
# 分割した文字列を整数に変換(`map(&:to_i)`)
n, m = gets.split.map(&:to_i)
a, b, c = gets.split.map(&:to_i)
# `times`メソッドで指定された回数`n`だけブロック(`{...}`)を繰り返す
# `gets.to_i`で整数に変換し`sales`に代入
sales = n.times.map { gets.to_i }

puts calc_unprofitable_stores(n, m, a, b, c, sales)