class PigLatinizer
  attr_reader :text
 
  # def initialize(text)
  #   @text = text.downcase
  # end
 
  def piglatinize(text)
    words = text.split(" ")
    new_words = []
    words.each do |w|
      first_vow_loc = 0
      w.chars.to_a.each_with_index do |value, index|
        # binding.pry
        if value.downcase.scan(/[aeoui]/).length > 0 
          # binding.pry
          first_vow_loc = index
          break
        end
      end
      if first_vow_loc == 0
        new_word = w + "way"
      else
        to_extract = w[0..first_vow_loc - 1]
        remain = w[first_vow_loc..w.length]
        new_word = remain + to_extract + "ay"
      end
      new_words << new_word
    end
    new_words.join(" ")
  end

end