class Bottles
  def verse(count)
    verse = <<-VERSE
#{bottles(count)} of beer on the wall, #{bottles(count)} of beer.
Take one down and pass it around, #{bottles(count - 1)} of beer on the wall.
VERSE
    verse
  end

  private

  def bottles(count)
    case count
    when 1
      "#{count} bottle"
    else
      "#{count} bottles"
    end
  end
end