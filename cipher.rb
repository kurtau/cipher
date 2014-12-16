def caesar_cipher(text, shift)
  aupper = ('A'..'Z').to_a
  alower = ('a'..'z').to_a

  string_to_return = ""

  if shift > 26
  	shift = shift % 26
  end

  text.each_char do |x|
    if aupper.include?(x) || alower.include?(x)
      new_letter = x.ord + shift

        if new_letter > 122
          new_letter -= 26
          string_to_return += new_letter.chr
        elsif new_letter > 90 && new_letter < 97
        	new_letter -= 26
        	string_to_return += new_letter.chr
        else
          string_to_return += new_letter.chr
        end

    else
      string_to_return += x
    end  
  end
  return string_to_return
end




puts caesar_cipher("Turtle", 5)