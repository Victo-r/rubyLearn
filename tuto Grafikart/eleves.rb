
class Eleve
  def initialize(name)
    @name = name
    @note = []
  end

  def ajouterNote(note)
    @note << note
  end

  def note
    puts "_______________________"
    puts "Les notes sont:"
    @note.each do |note|
      puts note
    end
  end

  def moyenne?
    puts "_______________________"
    puts "L'élève a-t-il la moyenne?"
    sommeNotes = 0
    @note.each do |note|
      sommeNotes += note
    end
    @emoyenne = sommeNotes/@note.length
    puts @emoyenne >= 10
  end

  def moyenne
    puts "_______________________"
    puts "La moyenne de l'élève est:"
    puts @emoyenne
  end
end

eleve = Eleve.new("Jean")
eleve.ajouterNote(18)
eleve.ajouterNote(10)
eleve.ajouterNote(2)
eleve.note
eleve.moyenne?
eleve.moyenne

