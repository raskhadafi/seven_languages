# Day 2 Self-study

puts "Excercise 4"
###################
# Write a simple grep that will print the lines of a file
# having any occurrences of a phrase anywhere in that line.
# You will need to do a simple regular expression match and read lines from a file.
# (This is surprisingly simple in Ruby.) If you want, include line numbers.

def grep(searched = '', file_name = 'some_text.txt')
  File.open(File.dirname(__FILE__).concat("/").concat(file_name)) do |file|
    file.each_line { |line| search_line(searched, line)  }
  end
end

def search_line(value, line)
  puts line if line.include?value
end

grep('nonumy')
