adeviner = Random.rand 0..2000
tentative = 0

puts "Le but de ce jeux est de trouver le bon nombre, il peux varier entre 0 et 2000,
a chaque tentative, on te dit si le nombre que tu cherche est plus grand ou plus petit que celui que tu a entré."
puts ""
puts "Pour commencer écris un nombre puis tappe sur entrer"

npropose = gets.chomp.to_i

while npropose != adeviner

  if adeviner > npropose
    puts "Le nombre que tu cherche est plus grand que #{npropose}"
  elsif adeviner < npropose
    puts "Le nombre que tu cherche est plus petit que #{npropose}"
  end
  puts "Entre un autre nombre."
  npropose = gets.chomp.to_i
  tentative += 1

end
puts "Bravo le bon chiffre était bien #{adeviner} et tu l'a deviné au bout de #{tentative + 1} tentatives."