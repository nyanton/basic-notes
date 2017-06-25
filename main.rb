#!/usr/bin/env ruby

require_relative "note"
require_relative "menu"

noteArray = Array.new
menu = Menu.new
input = -1

begin
  file = open("notes", "r")
  puts "file has been opened"
  if file
    #noteArray =
  end

rescue
  puts "no file to open, a new file will be created upon exiting the application"
end

while input != "0"
  menu.mainMenu
  input = gets.chomp

  case input
  when "1"
    puts "to be implemented"
  when "2"
    puts "yet to be implemented"
  when "3"
    puts "can't save yet"
  when "0"
    puts "exiting program, but yet to save"
  end

end
