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