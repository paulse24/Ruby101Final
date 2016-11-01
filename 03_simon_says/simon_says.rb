def echo (word)
word
end

def shout (word)
word.upcase
end

def repeat (word, repetitions=2)
  modword = word + " "
  result = modword*repetitions
  result[0..-2]
end

def start_of_word (word, number)
  realnumber = number.to_i - 1
  word[0..realnumber]
end

def first_word (phrase)
  phrase.split[0]
end

def titleize (s)
  words = s.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
