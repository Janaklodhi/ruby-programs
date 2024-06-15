# Question 1 Rearrange Words in a Sentence
require "byebug"
def arrange_words(text)
   words = text.split
   words.sort_by! { |word| [word.length, words.index(word)] }
   result = words.join(' ')
   result = result[0].upcase + result[1..-1].downcase
   return result
end
text = "Leetcode is cool"
puts arrange_words(text)