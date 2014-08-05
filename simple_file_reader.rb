# Author:       Corey
# Date:         7/1/2014
# Project:      Simple File Reader
# Ruby version: 1.9.3
# Description:  A simple program meant to be used for basic file reading. 

file = "read_from.txt"

open_file = File.open(file)

while !open_file.eof?
  line = open_file.gets.chomp.split(/,/)

  puts line
end

open_file.close