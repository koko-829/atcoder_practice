高橋君は消してしまった記録の復元を試みようとしています。
i, o のみからなる文字列 S
長さが偶数であり、奇数文字目が i で偶数文字目が o である。

arr = gets.chomp
len = arr.length
count = arr.scan(/io/).size
puts len - (count * 2)

---
n = gets.to_i
arr = gets.split.map(&:to_i)
total = arr.uniq.length
sum = 0
(0..n-2).each do |i|
  ans = arr[0..i].uniq.length + arr[i+1..(-1)].uniq.length
  if sum < ans
    sum = ans
  end
end
puts sum




n = gets.to_i
arr = gets.split.map(&:to_i)
total = arr.uniq.length
dup = arr.tally.to_a.select{|_,count| count >= 2 }.map{|i| i[0]}
puts dup.map{|i| arr[0..i].uniq + arr[i+1..(n-1)]}.max

---

h,w = gets.split.map(&:to_i)
arr = 2.times.map{gets.split.map(&:to_i)}
puts arr[0][1] + arr[1][1] + arr[1][2] + arr[0][2] + arr[0][1]

---
dx = [1,0,-1,0]
dy = [0,-1,0,1]
R,D,L,U = 0,1,2,3
moves = [R,D,R,U,L]
x,y = 0,0 ; cost = 0
h,w = gets.split.map(&:to_i)
arr = h.times.map{gets.split.map(&:to_i)}
moves.each do |i|
  x += dx[i]; y += dy[i]; cost += arr[y][x]
end
puts cost


---
da = gets.to_i
a_days = da.times.map{gets.to_i}
db = gets.to_i
b_days = db.times.map{gets.to_i}
both_choice = "A"
(1..31).each do |i|
  if a_days.include?(i) && b_days.include?(i)
    puts both_choice; both_choice = "AB".delete(both_choice)
  elsif a_days.include?(i)
    puts "A"
  elsif b_days.include?(i)
    puts "B"
  else
    puts "x"
  end
end

---
普段の移動手段は全て paiza バス
paica という IC カードを乗車券として使う.事前に paica にチャージをする
運賃支払に paica のカード残額を使うと、運賃の 10 % が paica ポイントとしてたまります
降車する時に、支払う運賃以上のポイントがある場合は、ポイントが優先的に運賃の支払いに使われます。
ポイントで運賃を支払った場合、新たなポイントは発生しません。

balance, count = gets.split.map(&:to_i)
points = 0
count.times do |i|
  fare = gets.to_i
  points >= fare ? points -= fare : (balance -= fare ; points += (fare * 0.1).to_i)
  puts "#{balance} #{points}"
end
---

2枚のカードの強弱関係は、次のルールによって決まります。
・1つ目の番号が大きいカードのほうが強い
・1つ目の番号が同じ場合、2つ目の番号が小さいカードのほうが強い
親カードの方が強いならば "High"、そうでなければ "Low" と出力してください。

parents = gets.split.map(&:to_i)
n = gets.to_i
n.times do |i|
  child = gets.split.map(&:to_i)
  puts parents[0] > child[0] ? "High" : parents[0] < child[0] ? "Low" : parents[1] < child[1] ? "High" : "Low"
end

---

n,r = gets.split.map(&:to_i); len = r * 2
boxes = n.times.map{gets.split.map(&:to_i).min}
puts boxes.map.with_index {|i,index| index + 1 if i >= len}.compact

---

n = gets.to_i
arr = n.times.map{gets.split.map(&:to_i)}
p arr

puts "#{(1029 - 431) / 60}  #{(1029 - 431) % 60}"

---

n = gets.to_i
w = gets.chomp
words = n.times.map{gets.chomp}.select{|i| i.include?(w)}
p words


arr = gets.split(/[ :]/).map{&:to_i}

time = "02:50 12:30"
p time.split #=> ["02:50", "12:30"]
p time.split(/[: ]/) #=> ["02", "50", "12", "30"]
p time.split.map{|i| i.split(":")} #=> [["02", "50"], ["12", "30"]]
# ついでにブロック変数省略する書き方。
p "02:50 12:30".split.map{ _1.split(":") }

---

最初に各人はそれぞれボールをいくつか所持しています。
当な順番でボールをパスしていくのですが、この際にパスする相手とボールの個数を宣言します。

n = gets.to_i #n人存在する
balls = [0].concat(n.times.map{gets.to_i})
count = gets.to_i #count回パス回しする
count.times do |i|
  info = gets.split.map(&:to_i)
  if balls[info[0]] >= info[2]
    balls[info[0]] -= info[2]
    balls[info[1]] += info[2]
  else
    balls[info[1]] += balls[info[0]]
    balls[info[0]] = 0
  end
end
puts balls[1..n]

---
n = gets.to_i #n人
ages = [0].concat(n.times.map{gets.to_i})
beans = Array.new(n + 1, 0)
count = gets.to_i # 実行回数
count.times do |i|
  start,last, num = gets.split.map(&:to_i)
  (start..last).each do |s|
    beans[s] = [(beans[s] + num), ages[s]].min
  end
end
puts beans[1..n]

---
win = gets.split.map(&:to_i)
n = gets.to_i
n.times do |i|
  num = gets.split.map(&:to_i)
  puts num.count {|n| win.include?(n)}
end

--
ある人の座標を (x, y), 2つの円の中心の座標を (xc, yc)
半径をそれぞれ r_1, r_2 (r_1 < r_2) とします。

xc, yc, r1, r2 = gets.split.map(&:to_i)
n = gets.to_i
n.times do |i|
  x,y = gets.split.map(&:to_i)
  base = (x - xc) ** 2 + (y - yc) ** 2
  puts (base >= r1 * 2) && (base <= r2 ** 2) ? "yes" : "no"
end

xc, yc, r1, r2 = gets.split.map(&:to_i)
n = gets.to_i
n.times do |i|
  x,y = gets.split.map(&:to_i)
  base = (x - xc) ** 2 + (y - yc) ** 2
  puts (base >= r1 ** 2) && (base <= r2 ** 2) ? "yes" : "no"
end

---

n = gets.to_i
id = n.times.map{gets.chomp}
puts id.sort_by {|i| i.delete("^0-9").to_i}

---

n = gets.to_i
base = gets.chomp.split('')
arr = gets.chomp.split('')
if base == arr
  puts 'Yes'; exit
end
(n-1).times do |i|
  arr = arr.unshift(arr.pop)
  if arr == base
    puts 'Yes'; exit
  end
end
puts 'No'

---
---
n = gets.to_i
base = gets.chomp.split
arr = gets.chomp.split
arr = arr.concat(arr).join

---

s = gets.chomp.split('')
t = gets.chomp.split('')
if s == t
  puts 'NO'; exit
end
t = t.permutation.to_a
p t

---
a,b,R = gets.split.map(&:to_i)
n = gets.to_i
n.times do |i|
  x,y = gets.split.map(&:to_i)
  puts ((x - a) ** 2 + (y - b) ** 2) >= R ** 2 ? "silent" : "noisy"
end

---
n = gets.to_i
arr = n.times.map{gets.split.map(&:to_i)}.transpose
puts [arr[0][0], arr[1][n-1], arr[2].max, arr[3].min].join(' ')

---
n = gets.chomp
m = gets.to_i #部屋の数
num = m.times.map{gets.chomp}.select{|i| !i.include?(n)}
puts num.empty? ? "none" : num.map(&:to_i)
---
n = gets.to_i
arr = n.times.map{gets.to_i}
arr.each do |i|
  puts (arr.count{|s| s > i } + 1)
end

---

M, N = gets.split.map(&:to_i)
arr = [*1..M]
N.times do |i|
  arr = arr[(M/2)..-1].zip(arr[0..(M/2 - 1)])
end
puts arr.join(' ')

---
h,w = gets.split.map(&:to_i)
result = h.times.map{gets.chomp.split('')}.flatten
score = h.times.map{gets.split.map(&:to_i)}.flatten
arr = result.zip(score).select{|i| i[0] == "o"}
puts arr.sum{|i| i[1]}

---
hold, profit = 0,0
n,c1,c2 = gets.split.map(&:to_i)

(n-1).times do |i|
  price = gets.to_i
  if price <= c1
    hold += 1; profit -= price
  end
  if price >= c2
    profit += hold * price; hold = 0
  end
end
price = gets.to_i
if price <= c1
  hold += 1; profit -= price
end
puts profit + (hold * profit)
---

寿司 1 から寿司 N までの N 種類の寿司を生産しており、M 個入りのパックにして出荷
n, m = gets.split.map(&:to_i)
a = m.times.map{gets.to_i}
b = m.times.map{gets.to_i}
puts a.tally == b.tally ? "Yes" : "No"

---

1. 通常は購入金額の 1 ％（小数点以下切り捨て）とする
2. ただし、3 のつく日は購入金額の 3 ％（小数点以下切り捨て）とする
3. ただし、5 のつく日は購入金額の 5 ％（小数点以下切り捨て）とする

point = 0
n = gets.to_i
n.times do |i|
  day, price = gets.split
  price = price.to_i
  point += day.include?("5") ? (price * 0.05).floor : day.include?("3") ? (price * 0.03).floor : (price * 0.01).floor
end
puts point

---
n = gets.to_i
price = [0].concat(gets.split.map(&:to_i))
total, q = gets.split.map(&:to_i)
q.times do |i|
  num, count = gets.split.map(&:to_i)
  cost = price[num] * count
  total -= cost if cost <= total
end
puts total

---
n,m = gets.split.map(&:to_i)
arr = n.times.map{gets.split.map(&:to_i)}
score = arr.map{|i| [i[0] - (i[1] * 5), 0].max}
score.each.with_index(1){|score,index| puts index if score >= m}

---
1 から 9 までの数字のカードのみを 4 枚使用
左から 2 枚のカード、右から 2 枚のカードをそれぞれ 2 ケタの整数とみなし、和を計算
カード 4 枚に書かれた数が与えられるので、最大スコアを出力

arr = gets.split.map(&:to_i).sort.reverse.map(&:to_s)
puts (arr[0] + arr[2]).to_i + (arr[1] + arr[3]).to_i

---
ATK, DEF, AGI = gets.split.map(&:to_i)
n = gets.to_i
arr = n.times.map{gets.chomp.split}
result = []
arr.each do |i|
  i[1..-1] = i[1..-1].map(&:to_i)
  if (i[1]..i[2]) === ATK && (i[3]..i[4]) === DEF && (i[5]..i[6]) === AGI
    result << i[0]
  end
end
puts result.empty? ? "no evolution" : result

---
全てのインターンシップ先はあるホテルから徒歩で行くことができ、インターンシップ期間はそのホテルに宿泊
インターンシップ期間の宿泊費はインターンシップ先が負担.
交通費やインターンシップ期間外の宿泊費は自己負担
インターンシップの間に、あなたはホテルに泊まり続けるか、一度家に帰るかを選択
ホテルに泊まり続ける場合は一泊ごとに宿泊費がかかりますが、新幹線に乗る必要はないので交通費はかかりません
家に帰る場合は、宿泊費はかかりませんが、往復の新幹線の交通費がかかってしまします。
インターンシップの日程と、新幹線の片道の料金、ホテルの一泊あたりの料金の情報
最も安く行動したときの自己負担額を求める

---
train, stay, n = gets.split.map(&:to_i)
cost = train * 2 # 行きと帰りの交通費を事前に算出
sch = n.times.map{gets.split.map(&:to_i)}# 必要なのは前要素の2つ目と後要素の1つ目の差
(n-1).times do |i|
  blank = sch[i+1][0] - sch[i][1]
  cost += [(train * 2), (blank * stay)].min
end
puts cost

---

n, a, b = gets.split.map(&:to_i)
puts [*1..n].select{|i| (a..b).include?(i.to_s.split('').map(&:to_i).inject(:+))}.sum


--