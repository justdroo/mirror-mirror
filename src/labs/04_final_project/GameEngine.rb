class GameEngine
  def text_match(choice, good)
    if good.include?(choice)
      true
    else
      false
    end
  end
end
