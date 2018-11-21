require 'pry'

class String

  def sentence?
    self.end_with?('.')
    
    
  end

  def question?
    self.end_with?('?')

  end

  def exclamation?
    self.end_with?('!')

  end
  
  
  #makes a sentence into an array based on punctuation
  def sentence_to_array (string)
  string_split = string.split('.')
  string_split.map! do |words|
     words.split('!')   
  end
  string_split.flatten!

  string_split.map! do |words|
     words.split('?')   
  end
 string_split.flatten
end

  def count_sentences
    sentence_to_array(self).count
    
    
    
  
  end
end