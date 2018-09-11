class Bottles
  def initialize
  end

  def verse(num)
    if num > 2
      <<-VERSE
#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num-1} bottles of beer on the wall.
      VERSE
    elsif num == 2
      <<-VERSE
#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE
    elsif num == 1
      <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    else
      <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    end
  end

  def verses(a, b)
    (b..a).map{|num| verse(num)}.reverse.join("\n")
  end

  def song
    verses(99,0)
  end
end
