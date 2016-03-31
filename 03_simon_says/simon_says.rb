def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat( word, options = {} )
  num = options[ :num ] ||= 2
  ( (word + " ") * num ).strip
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
