cost = (gets.to_i * 1.08).floor
puts cost > 206 ? ":(" : cost == 206 ? "so-so" : "Yay!"
