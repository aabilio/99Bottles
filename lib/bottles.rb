class Bottles
  def verse(count)
    verse = <<-VERSE
#{bottles(count)} of beer on the wall, #{bottles(count)} of beer.
#{take_down(count)} and pass it around, #{bottles(count - 1)} of beer on the wall.
VERSE
    verse
  end

  private

  def bottles(count)
    case count
    when 0
      "no more bottles"
    when 1
      "#{count} bottle"
    else
      "#{count} bottles"
    end
  end

  def take_down(count)
    case count
    when 1
      "Take it down"
    else
      "Take one down"
    end
  end
end