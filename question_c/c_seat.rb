n = gets.to_i
a = gets.split.map(&:to_i)
dup_index = a.each_with_index.group_by { |it, i| it}
arr = []
dup_index.each_value {|i| arr << i}
puts arr
