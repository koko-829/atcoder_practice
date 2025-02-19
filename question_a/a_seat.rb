n,m,p = gets.split.map(&:to_i)
if m <= n
  puts (n-m) / p + 1
else
  puts 0
end