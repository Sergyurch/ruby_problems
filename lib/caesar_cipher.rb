def caesar_cipher(string, shift)
  $alphabet = 'abcdefghijklmnopqrstuvwxyz'
  $shift = shift % 26
  new_string = ''
  
  def make_new_letter(letter)
    current_index = $alphabet.index(letter.downcase)
    if $shift > 0 
      if current_index + $shift > 25
        new_index = 0 + $shift - (26 - current_index)
      else
        new_index = current_index + $shift
      end
      return $alphabet[new_index]
    else
      if current_index + $shift < 0
        new_index = 26 + $shift + current_index
      else
        new_index = current_index + $shift
      end
      return $alphabet[new_index]
    end
  end
  
  for i in (0...string.length)
    if $alphabet.index(string[i].downcase)
      if string[i] != string[i].downcase
        new_string[i] = make_new_letter(string[i]).upcase
      else
        new_string[i] = make_new_letter(string[i])
      end
    else
      new_string[i] = string[i] 
    end
  end
  
  return new_string
end

#puts caesar_cipher("abcdefghijklmnopqrstuvwxyz", 3)
