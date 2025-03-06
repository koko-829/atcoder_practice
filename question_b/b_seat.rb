count = 0
n = gets.to_i
n.times { count += gets.chomp.match(/G C|P G|C P/) ? 1:0}
puts count