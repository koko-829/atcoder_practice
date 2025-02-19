n = gets.to_i
inputs = n.times.map{ gets.to_i }

p gets.to_i.times.map do
  x,u=gets.split
  u=="JPY" ? x.to_f : x.to_f*380000
end.sum