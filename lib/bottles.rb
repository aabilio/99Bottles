class Bottles
  def verse(count)
    [first_sentence(count), second_sentence(count)].join()
  end

  private

  def first_sentence(count)
    "#{bottles(count).capitalize} of beer on the wall, #{bottles(count)} of beer.\n"
  end

  def second_sentence(count)
    case count
    when 0
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{take_down(count)} and pass it around, #{bottles(count - 1)} of beer on the wall.\n"
    end
  end

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