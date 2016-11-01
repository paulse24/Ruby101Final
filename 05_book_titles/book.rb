class Book
  attr_reader :title

  def title=(titleIn)
    titleIn = titleIn.split
    titleOut = ""
    titleIn.each do |k|
      if (k != 'the' and k != 'a' and k != 'an' and k != 'and' and k != 'in' and k != 'of')
        titleOut = titleOut + " " + k.capitalize
      else
        titleOut = titleOut + " " + k
      end
    end
  titleOut[1] = titleOut[1].upcase
  @title = titleOut[1,200]
  end
end
