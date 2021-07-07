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
    new_string = self.split(/[.!?]/)
    new_string.delete_if {|sentence| sentence.empty? }
    new_string.count
  end

end
