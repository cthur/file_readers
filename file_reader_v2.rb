# Author:       Corey
# Date:         7/4/2014
# Project:      Simple File Reader
# Ruby version: 1.9.3
# Description:  A simple program meant to be used for basic file reading. A check to see if the 'file_to_read.txt' file exists. If it does, the contents will be saved to a new or existing file called 'saved_file.txt' with each word being on it's own line instead of being comma delimited.

file = "file_to_read.txt"
file2 = "saved_file.txt"
line = ""

if File.exists?(file)
  open_file = File.open(file)

  while !open_file.eof?
    line = open_file.gets.chomp.split(/,/)
  end

  File.open(file2, "w") do |f|
    f.puts line
  end

  open_file.close

  puts line

else
  print "Sorry, the file could not be found."
end