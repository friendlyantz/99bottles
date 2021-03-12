class Bottles
  def initialize
    @verse = ""
  end
  
  def verse(counter)
    # puts counter
    # return "#{counter.to_s} bottles of beer on the wall, #{counter} bottles of beer.\nTake one down and pass it around, #{counter-1} bottles of beer on the wall.\n"
    if counter > 2
      return "#{counter.to_s} bottles of beer on the wall, #{counter} bottles of beer.\nTake one down and pass it around, #{counter-1} bottles of beer on the wall.\n"
    elsif counter == 2
      return "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n" 
    elsif counter == 1 
      return "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    end
      
    # @verse << "#{counter.to_s} bottles of beer on the wall, #{counter} bottles of beer.\nTake one down and pass it around, #{counter-1} bottles of beer on the wall.\n"
  end

end