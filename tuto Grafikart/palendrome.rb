premiermot = gets.chomp.downcase
deuxiememot = premiermot.reverse

if premiermot == deuxiememot
  puts "Le mot #{premiermot} est un palendrome."
else
  puts "Le mot #{premiermot} n'est pas un palendrome."
end