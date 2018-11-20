require 'pry'

class String

  def sentence?
    self.end_with?(",")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0 
    self.each do |word|
      count += 1 if ",?!.".include?(word[-1])
    end
    count
  end
end