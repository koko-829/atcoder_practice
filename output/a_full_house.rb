# - [A問題 - Full House](https://atcoder.jp/contests/abc386/tasks/abc386_a)
#     - 書いてみたコード(コード長：59Byte, 処理速度：44ms)

puts gets.split.map(&:to_i).uniq.length == 2 ? "Yes" : "No"

#     - 良さげ別解(コード長：47Byte, 処理速度：43ms)

puts gets.split.uniq.size == 2 ? "Yes" : "No"

#     - 比較何かしらアウトプット
#         - 1行で絶対完成させるマンで行きました。ほとんど変わらないけどmap(&:to_i)の有無が自分にとってはかなり盲点な部分だったのでアウトプット。
#         - 4枚カードを所持してる段階でその手札的にフルハウスなりえるかって簡単な問題。わざわざ条件分岐しなくても配列にして重複除去したときに2つの数字しか残ってなかったらフルハウスになる手札なんじゃないかって思って書いたコードですね。
#         - で、私のは`map(&:to_i)` で入力内容を数値に変換してから重複除去してるねんけど、別解はこれをしてない。よく考えたら、数字扱う問題やけど、最終的に配列の要素数を比較すればいいだけやから、`map(&:to_i)` を実行する理由が処理の観点で見れば一切なかったんですね。
#         - 小さいところやけどね。数字やったら受け取ったら絶対にto_iで型変換せなみたいな固定観念を捨てたいですね、本当に処理に使うのかどうかを見極めたい。
