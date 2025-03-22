2 人の取締役を選任
2 つの方法を用いて行い、それぞれの方法で 1 人の取締役を選任
- 1 人につき 1 票の投票権があり、最多得票数を得た者を取締役
- 1 人につき持株数分の投票権があり、最多得票数を得た者を取締役
N 人の株主について、持株数及び誰に投票したか

n = gets.to_i
arr = n.times.map{gets.chomp.split}
first = arr.map {|i| i[0]}
puts first.max_by {|i| first.count(i)}
second = arr.group_by {|i| i[0]}
puts second.map{|key,val| [key, val.sum{|i| i[1].to_i}]}.max_by{|x| x[1]}[0]
[345, 436, 64, 932].max_by{|a| a.to_s.split('')[-2,2].join.to_i}


---
a,b = gets.split.map(&:to_i)
puts (a..(a * 6)).include?(b) ? "Yes" : "No"
---

a,b = gets.split.map(&:to_i)
puts [*a..b].size

---
N 個買うために必要な金額
キャベツを 1 個 X 円で買う
A 個よりも多く買う場合、A+1 個目以降に買うキャベツについては 1 個 Y 円で買う

n,a,x,y = gets.split.map(&:to_i)
puts a < n ? x * a + (n - a) * y : x * n


a,b = gets.split.map(&:to_i)
puts ((a - b) / 3).to_f + b

---

N 日間の旅程のうち、「パイザ氏の 1 日の時間」の最も長い日と最も短い日について、その時間を求めてください。
パイザ氏が滞在している場所の時計で 0 時を見てから、移動した場合は移動先の時計で次の日の 0 時を見るまでの時間です。


n = gets.to_i
arr = n.times.map{gets.split.map(&:to_i)}
p arr

---
校正ルール表は以下の条件を満たす、長さ 26 の文字列です。
i 番目の文字は英字アルファベット順で i 番目の文字の大文字または小文字
[*"A".."Z"].length

rules = gets.chomp.split('')
upcases = [*"A".."Z"]
w = gets.chomp.split('').map(&:upcase)
w.each_with_index do |i, index|
  w[index] = rules[upcases.index(i)]
end
puts w.join

---
num = gets.chomp.split('').delete('-').map(&:to_i)
p num

---

sum = 2.times.map{gets.to_i}
puts sum >= 1000 ? sum - 100 : sum

---
n = gets.to_i
arr = gets.split.map(&:to_i)
ans = arr.sort
q = gets.to_i
q.times do |i|
  s,t = gets.split.map(&:to_i)
  arr[s-1], arr[t-1] = arr[t-1], arr[s-1]
end
puts arr == ans ? "Yes" : "No"

%w(R E T N Q)
name = "RUETNQ"
# 1と3のインデックス部分を入れ替えたいんだよなぁ…
workspace = name[2]
name[2] = name[4]
name[4] = workspace
puts name
#=> RUNTEQ

name = "RUETNQ"
name[2], name[4] = name[4], name[2]
puts name
#=> RUNTEQ