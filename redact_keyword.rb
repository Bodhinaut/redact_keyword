
# --- below is a fixed version from the help of StackOverflow, amazing, 
# need to learn more about 'Windowing'

def search_redact(text)
  str = ""

  print "What is the word you would like to redact?"
  redacted_name = gets.chomp
  puts "Desired word to be REDACTED #{redacted_name}! "
  redacted_name = "password"
  #splits name to be redacted, and the text argument into char arrays
  redact = redacted_name.split("")
  words = text.split("")

  words.each.with_index do |letter, i|
    # use windowing to look for exact matches
    if words[i..redact.length + i] == redact
      words[i..redact.length + i].each.with_index do |_, j|
        # change the letter to an astrisk
        words[i + j] = "*"
      end
    end
  end

  words.join
  words.each do |e|
    str += e
  end
  print str
end

# calling method with test case
search_redact("thisisapassword")

=begin now the method can find the requested redacted phase and will only omit 
 the characters from that string and not the whole document
=end 
