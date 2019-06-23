#write your code here
def simon_says
  def echo(string)
    string
  end

  def shout(string)
    string.upcase
  end

  def repeat(string, times = 2)
    word = " " + string
    while times > 1
      string += word
      times -= 1
    end
    string
  end

  def start_of_word(string, length)
    string[0..length - 1]
  end

  def first_word(string)
    arr = string.split(" ")
    arr[0]
  end

  def titleize(string)
    arr = string.split(" ")
    arr.map! do |word|
      if (word == "and" || word == "the" || word == "over")
        if arr.index(word) == 0
          word = word.capitalize + " "
        else
          word = word + " "
        end
      else
        word = word.capitalize + " "
      end
    end

    arr.join.chop
  end
end

puts simon_says.titleize("hi there")
