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


