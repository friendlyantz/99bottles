require "pry"
class Bottles
  def initialize
    @verse = ""
    @verses = ""
  end
  
  def verse(counter)
    if counter > 2
      return "#{counter.to_s} bottles of beer on the wall, #{counter} bottles of beer.\nTake one down and pass it around, #{counter-1} bottles of beer on the wall.\n"
    elsif counter == 2
      return "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n" 
    elsif counter == 1
      return "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    elsif counter.zero?
      return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(start_counter, finish_counter = nil)
    number_of_counters = start_counter - finish_counter + 1
    current_count = 0
    string = ""

    number_of_counters.times do
      string << verse(start_counter - current_count) + "\n"
      current_count += 1
    end

    string[0..-2]
  end

  def song
    verses(99, 0)
  end
end