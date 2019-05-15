require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    words = self.split(' ')
    words.count do |word|
      word.sentence? || word.question? || word.exclamation?
    end
  end
end
