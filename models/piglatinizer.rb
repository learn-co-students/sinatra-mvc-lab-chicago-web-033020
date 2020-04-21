class PigLatinizer

  attr_reader :text

  def piglatinize(text)
    arr = text.split(" ")
    new_arr = []
    arr.each do |word|
      consonants = word[/\A[bcdfghjklmnpqrstvwxyz]*/i].length
      if consonants == 0
        word = word + "way"
        new_arr << word
      else
        string_array = word.split(//)
        chars = string_array.shift(consonants)
        pig_arr = string_array << chars
        pig_arr << "ay"
        new_thing = pig_arr.join
        new_arr << new_thing
      end
    end
    new_arr.join(" ")
  end

end