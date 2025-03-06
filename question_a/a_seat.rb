a = gets.split.map(&:to_i)
len = a.uniq.length
if len == 1
  puts a[1]
elsif len == 2
  if a[0] == a[1]
    puts a[2]
  elsif a[0] == a[2]
    puts a[1]
  else
    puts a[0]
  end
else
  puts 0
end