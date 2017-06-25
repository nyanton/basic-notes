#!/usr/bin/env ruby

require_relative "note"
require_relative "menu"

noteArray = Array.new
menu = Menu.new
input = -1

begin
  file = open("notes", "r")

  if file
    #go through each line and take the title and content, then put them into the noteArray
    file.each do |line|
      tokens = line.split("\t")
      note = Note.new(*tokens)
      noteArray << note
    end

  puts "file has been opened"
  end

rescue
  puts "no file to open, a new file will be created upon exiting the application"
end

puts "welcome to the note taker"
puts "select an option\n\n"

while input != "0"
  menu.mainMenu
  input = gets.chomp

  case input
  when "1"
    note = Note.new(*menu.addNote)
    noteArray << note

  when "2"
    menu.viewNotes(noteArray)
  when "3"
    file = open("notes", "w")
    noteArray.each do |note|
      file.write("#{note.title}\t#{note.note}")
    end
  when "0"
    file = open("notes", "w")
    noteArray.each do |note|
      file.write("#{note.title}\t#{note.note}")
    end
  end

end
