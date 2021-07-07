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
    # sent_split.delete("")
    # sent_split.count

    #this splits on a period, then joins on exclamation and a space ect..

   self.split(".").join("! ").split("! ").join("? ").split("? ").length

  end
    #self.end_with?("!")
end #end of class
