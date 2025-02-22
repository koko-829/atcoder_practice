n, d = gets.split.map(&:to_i)
s = gets
d.times do |i|
  s[s.rindex("@")] = "."
end
puts s