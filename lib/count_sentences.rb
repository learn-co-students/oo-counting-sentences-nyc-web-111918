require 'pry'

class String

  def sentence?
    #binding.pry
    #pry shows the string name to be the self value
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #binding.pry
    #loop through the string being tested. split on spaces would create an array of all words
    #check if last element in string of array element is a period exclamation or question
    #count these. Since there are multiple !!!, need to only count last one
    string_array = self.split(" ")
    string_array.select! do |i|
      i[-1] == "." || i[-1] == "!" || i[-1] == "?"
    end
    string_array.length
  end
end

# [1] pry(#<String>)> self
# => "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
# [2] pry(#<String>)>
