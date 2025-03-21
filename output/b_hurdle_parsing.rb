# - [**B - Hurdle Parsing**](https://atcoder.jp/contests/abc380/tasks/abc380_b)
#     - 書いてみたコード(コード長：112Byte, 処理速度：132ms)

inputs = gets.chomp.split('|').drop(1)
len = []
inputs.each do |i|
  len << i.length
end
puts len.join(' ')

#     - もうひとつ！！書いてみたコード(コード長：48Byte, 処理速度：43ms)

#         上のを1行でまとめれると思って新しく書いてみた。

puts gets.chomp.split('|').map(&:length).drop(1)

#     - [良さげ別解](https://atcoder.jp/contests/abc380/submissions/59831195)(コード長：38Byte, 処理速度：41ms)

puts gets.scan(/-+/).map(&:size)*' '

#     - 比較何かしらアウトプット
#         - 自コード
#             - 1回コード書いてみて、「あ、これ全部ひとまとめで計算できるやん！！」ってなったから、新しく書いてみたよ。2倍以上短いし処理早くなった。これちょっと嬉しね~。
#             - `drop(1)`は最初の配列要素を削除できるやつ。`|`で区切られてる`—` の数を求めたらいいんやけど、最初の|より前は絶対空文字になるからいらないんですね。
#             - 配列に直してから、新しく空配列作って、そこに文字列の長さに変換したもの格納する~みたいなコードを書いてみたけど、よく考えたらループ処理で行ってるのが`.length`で長さ求めてるだけ。やったら`split(’|’)`で配列化した直後に直接mapとぼっち演算子で`length`すればいいだけでしたな。
#         - 別解
#             - 青色の人のコード見てみた。split(’|’)で区切るんじゃなくて、scan(/-+/)で正規表現使って配列化してる。確かに〜泣。splitでやるのと違うのは、配列の最初に空白の無駄な要素入らないから、drop(1)の工程も要らなくなるところですね。`-`を取り出したいって思ってたら最初から正規表現使う方が正確やな〜正規表現使いこなせる人間になりたい泣
#             - 配列同士の連結、`*’ ‘`でも可能なのか。私が`join(’ ’)`で書いてたところ。この書き方気づいてなかったと言うか、知らなかったかも。メモ。
