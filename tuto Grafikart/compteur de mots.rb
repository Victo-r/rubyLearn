text = gets.downcase
frequence = Hash.new(0)
mots = text.tr(':;.,','').split(' ')
mots.each do |mot|
    frequence[mot] += 1

end

frequence = frequence.sort_by {|mot, count| count}
frequence.reverse!

frequence.each do |mot|
  puts "Le mot \"#{mot[0]}\" apparait #{mot[1]} fois dans le texte"
end
