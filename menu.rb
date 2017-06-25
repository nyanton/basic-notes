class Menu

  def initialize
  end

  def mainMenu
    puts "-----------------"
    puts "1. New Note"
    puts "2. View Notes"
    puts "3. Save"
    puts "0. Exit"
    puts "-----------------"
  end

  def addNote
    _note = Array.new
    puts "please put in the title of your note:"
    _note << gets.chomp

    puts "please enter your note:"
    _note << gets

    return _note
  end

  def viewNotes(array)
    i=1
    array.each do |note|
      puts "#{i}.#{note.title}"
      i+=1
    end

    puts "Select a note to view:"
    input = gets.chomp.to_i - 1

    puts array[input].note

  end

  def save
    file = open("notes", "w")
    noteArray.each do
      file.write("#{note.title} \t#{note.note}")
    end
  end
end
