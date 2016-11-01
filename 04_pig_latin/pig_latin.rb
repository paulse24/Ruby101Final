def translate (input)
  input = input.split
  output = ""
  input.each do |k|
    c = 0
    k.split("").each do |i|
      if (i.downcase == 'a' or i.downcase == 'e' or i.downcase == 'i' or i.downcase == 'o' or i.downcase == 'u')
        break
      elsif (i.downcase == 'q')
        c = c + 2
      else
        c = c + 1
      end
    end
    output = output + " " + k[c,200] + k[0,c] + "ay"
  end
  output[1,200]
end


puts translate ('school sucks big time')
