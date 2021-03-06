def echo(string)
  string
end

def shout(string)
  string.upcase
end

# will collect the word and put it in an array num times
def repeat(word, num = 2)
  num.times.collect { word }.join(' ')

end


def start_of_word( word, num )
  word[ 0..( num - 1 ) ]
end

def first_word( words )
  words.split[ 0 ]

end

def titleize ( phrase )
  ( phrase.capitalize! ).split.each { | word | word.capitalize! unless ( word.downcase == "and" || word.downcase == "over" || word.downcase == "the") }.join(" ").strip
end
