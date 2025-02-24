def substrings(string,dict)
  hash = Hash.new{0}
  dict.each do |word|
    if string.scan(/#{Regexp.escape(word)}/i).length != 0
            hash[word] = string.scan(/#{Regexp.escape(word)}/i).length
    end
  end
  return hash
end


my_dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?",my_dict)