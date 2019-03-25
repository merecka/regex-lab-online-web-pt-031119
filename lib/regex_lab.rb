require 'pry'

def starts_with_a_vowel?(word)
/\A[aeiouAEIOU]/.match?(word)
end

def words_starting_with_un_and_ending_with_ing(text)
#    text.scan(/\A+un\w+ing/)
  text.scan(/\A*un\w+ing/)
end

def words_five_letters_long(text)
  text.split(" ").grep(/\A[a-zA-Z]{5}\z/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  /\A[A-Z].+\W\z/.match?(text)
end

def valid_phone_number?(phone)
  new_array = []
  new_array = phone.join(" ").scan(/\d/)
  new_array.each do |x|
    if x.length == 5
      true
    else
      false
    end
  end
#  phone.each do |x|

#    /\A\W+\d{10}\W\z/.match?(x)
#  end
end
