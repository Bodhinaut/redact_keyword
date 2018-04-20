
def search_redact(text)
  str = ""

  print "What is the word you would like to redact?"
  redacted_name = gets.chomp
  puts "Desired word to be REDACTED #{redacted_name}! "
  #splits name to be redacted, and the text argument into char arrays
  redact = redacted_name.split("")
  text = text.downcase!
  words = text.split("")
  
  #takes char arrays, two loops, compares each character, if they match it 
  #subs that character out for an asterisks
  redact.each do |x|
    if words.each do |y|
      x == y
      y.gsub!(x, '*') # sub redact char with astericks if matches words text
       end # end loop for words y
    end # end if statment
 end # end loop for redact x

# this adds char array to a string so more readable  
words.each do |z|
  str += z
end
# prints it out so we can see, and returns it to method
  print str
  return str
end
 
# calling method with test case
search_redact("Hello we want Kyle out")

#current issues stands, needs to erase only if those STRING of characters are 
# together and not just anywehre in the document 