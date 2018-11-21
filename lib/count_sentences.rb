require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #think about how to split the sentence.
    # sent_split = self.split(/\.|\?|\!/)
   self.split(".").join("! ").split("! ").join("? ").split("? ").length
    # sent_split.delete("")
    # sent_split.count
  end
    #self.end_with?("!")
end #end of class
