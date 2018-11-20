#require 'pry'

class String

  def sentence?
    self.end_with?('.') ? true : false
  end

  def question?
    self.end_with?('?') ? true : false
  end

  def exclamation?
    self.end_with?('!') ? true : false
  end

  def count_sentences
    # Look for characters that are NOT .,!? then ARE .!? and ignoring ... !! etc
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end

end
