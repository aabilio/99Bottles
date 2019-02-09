class Bottles
  def verse(count)
    verse = <<-VERSE
#{count} bottles of beer on the wall, #{count} bottles of beer.
Take one down and pass it around, #{count - 1} bottles of beer on the wall.
VERSE
    verse
  end
end