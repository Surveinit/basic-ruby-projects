dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)

  words_to_a = words.downcase.split
  hash = {}

  words_to_a.each do |string|
    dictionary.each do |word|
    if string.include?(word)
      if hash.has_key?(word)
        hash[word] += 1
      else
        hash[word] = 1
      end
    end
    
  end
  
end
puts hash
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)