def starts_with_a_vowel?(word)
  if word.scan(/\b[aeiou]/) == []
    false
  else
    true
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\b[u][n]\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.scan(/\A[A-Z].*/) && text.scan(/(.)\z/)
    true
  else
    false
  end
end

def valid_phone_number?(valid_numbers)
  valid_numbers.all?{|number| /\b\d{10}\b/ || /.\d{3}.\d{3}.\d{4}/ || /\d{3}.\d{3}.\d{4}/ || /.\d{3}.\d{7}/}
end
