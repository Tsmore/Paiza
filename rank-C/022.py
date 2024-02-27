# ローソク足

# 日数nを入力で受け取る
n = int(input())

# 価格保存用に空の配列を用意
prices = []

# n日分の価格情報を受け取りpricesに格納
# `for _ in range(n)`で`_`を利用(n回分繰り返し入力を受け取るだけでループで繰り返し生成されるインデックスは利用しないため)
# `_`を利用することでこの変数がループ内で特に重要ではないことを伝える
# Pythonのコーディングスタイル
for _ in range(n):
  prices.append(list(map(int, input().split())))

# 始値: 最初の日の始値（インデックス0の要素の0番目）
start_price = prices[0][0]
# 終値: 最終日の終値（インデックス-1の要素の1番目）
# [-1]で最後の要素(一番最後の要素を指定可能)([-2]で最後から2番目の要素)
end_price = prices[-1][1]
# 最高値: すべての高値（インデックス2の要素）から最大値を取得
high_price = max(price[2] for price in prices)
# 最安値: すべての安値（インデックス3の要素）から最小値を取得
low_price = min(price[3] for price in prices)

# `f`はf-strings（フォーマット済み文字列リテラル）でPython3.6以降に使用可能
# `f`の前に置かれた文字列は`{}`を利用し変数名や式を含めることが可能
# 波括弧内の式を評価しその結果を文字列の一部として出力
# `start_price = 100`、`end_price = 150`、`high_price = 200`、`low_price = 90`の場合
# f-strings式では`100 150 200 90`で文字列を生成する
# `str.format()`メソッド,`%`フォーマット演算子より実行速度が早い利点がある
print(f"{start_price} {end_price} {high_price} {low_price}")
