

class String

  def sentence?
    return true if self[-1] == "."
    false
  end

  def question?
    return true if self[-1] == "?"
    false
  end

  def exclamation?
    return true if self[-1] == "!"
    false
  end

  def count_sentences
    sym = %w(. ! ?)
    count = 0
    self.chars.each_with_index do |ch, i|
      count += 1 if sym.include?(ch) && ch != self[i + 1]
    end
    count
  end
end
