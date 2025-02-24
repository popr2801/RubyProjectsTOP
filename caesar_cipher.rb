def caesar_cipher(string,key)
  res = ""
  string.each_char do |letter|
        if letter =~ (/[A-Z]/)
          res << ((letter.ord - 65 + key)%26 + 65).chr 
        elsif letter =~ (/[a-z]/)
          res <<((letter.ord - 97 + key)%26 + 97).chr 
        end
  end
  return res
end

puts caesar_cipher("xyz",1)