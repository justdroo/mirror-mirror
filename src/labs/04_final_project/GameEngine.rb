class GameEngine
  def text_match(choice, pass_words)
    if pass_words.include?(choice)
      true
    else
      false
    end
  end
end
