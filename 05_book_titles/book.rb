class Book
  # write your code here
  attr_accessor :title

  def title
    words = @title.split
    @title = ""
    words.map! do |word|
      if ((word == "and" || word == "a" || word == "an" ||
           word == "to" || word == "from" || word == "in" ||
           word == "of" || word == "the") && words.index(word) != 0)
        @title += word + " "
      else
        @title += word.capitalize + " "
      end
    end
    @title.chop
  end
end
