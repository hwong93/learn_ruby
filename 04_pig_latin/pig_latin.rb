def translate(strings)
  translated_words = []
  vowels = ["a", "e", "i", "o", "u"]

  array_strings = strings.split(" ")

  array_strings.each do |word|
      length_word = word.length
      start_v = ""
      word.each_char do |letter|
        if vowels.include?(letter)
          length_word = word.index(letter)
          start_v = vowels[vowels.index(letter)]
          break
        end
      end

      if  length_word == 0
        translation = "#{word}ay"
      elsif start_v == "u" && word[length_word-1] == "q"
        translation = "#{word[(length_word+1)..-1]}#{word[0..length_word]}ay"
      else
        translation = "#{word[(length_word)..-1]}#{word[0..length_word-1]}ay"
      end
      translated_words << translation
    end
    translated_words.join(" ")
end
