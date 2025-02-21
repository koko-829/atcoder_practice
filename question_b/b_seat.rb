n = gets.to_i
inputs = n.times.map{ gets.to_i }

p gets.to_i.times.map do
  x,u=gets.split
  u=="JPY" ? x.to_f : x.to_f*380000
end.sum


# ---を|で区切って配列化、最初の
inputs = gets.chomp.split('|').drop(1)
len = []
inputs.each do |i|
  len << i.length
end
puts len.join(' ')


puts gets.chomp.split('|').map(&:length).drop(1)
