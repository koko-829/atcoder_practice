# - [B問題 - Digital Gifts](https://atcoder.jp/contests/abc119/tasks/abc119_b)
#     - 書いてみたコード(コード長：125Byte, 処理速度：43ms)

n = gets.to_i
sum = 0
n.times do |i|
  s, t = gets.split
  s = s.to_f
  sum += t == "BTC" ? s * 380000.0 : s
end
puts sum

#     - 別解(コード長：75Byte, 処理速度：60ms)

p gets.to_i.times.map { x, u = gets.split; u == "JPY" ? x.to_f : x.to_f * 380000 }.sum

#     - 比較何かしらアウトプット
#         - 自コード、ループ処理ごとに入力受け取って、単位がBTCの場合とJPYの場合で条件分岐したものをsumにプラスしていってるだけ。
#             - 一回間違えてsに対して`to_f`やなくて`to_i`にしてたせいでビットコインの価値を全て無に帰する状態にしてしまってたから注意。
#         - コード色々みてみた結果皆解き方大体同じやったですね。これは別解というより、絶対にコード1行で抑えるマン。
#             - 1行目の入力内容を取得してそのままチェーンメソッドでtimesに繋げてる。確かに1行目はループ処理の回数指定にしか使わないからこの書き方あるんですね。
#             - mapメソッドで新しく配列返されるから、それをsumメソッドで合計してる。変数sumとか定義せずに直接合計求めれる感じですな。
#             - mapのブロック内のコード`x,u=gets.split;` で;を使って同じ行に続けて処理かけるようにしてる。mapの中身何してるの〜っていう部分、解体して同じ動きするコードを丁寧に書いたとしたらこんな感じかな？mapメソッドの戻り値は配列やから、endに直接sumメソッドが使える。

total = gets.to_i.times.map do
  x, u = gets.split
  u == "JPY" ? x.to_f : x.to_f * 380000
end.sum
puts total
