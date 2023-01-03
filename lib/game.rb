class Game
  TOTAL_ERRORS_ALLOWED = 7

  def initialize(word)
    @letters = word.chars
    @guess_letters = []
  end

  def errors
    return @guess_letters - normalized_letters
  end

  def errors_made
    return errors.length
  end

  def errors_allowed
    TOTAL_ERRORS_ALLOWED - errors_made
  end

  def letters_to_guess
    result =
      @letters.map do |letter|
        if @guess_letters.include?(normalize_letter(letter))
          letter
        else
          nil
        end
      end

    return result
  end

  def lost?
    return errors_allowed == 0
  end

  def over?
    return won? || lost?
  end

  def play!(letter)
    if !over? && !@guess_letters.include?(normalize_letter(letter))
      @guess_letters << normalize_letter(letter)
    end
  end

  def word
    return @letters.join
  end

  def won?
    return (normalized_letters - @guess_letters).empty?
  end

  private

  def normalize_letter(letter)
    return 'Е' if letter == 'Ё'
    return 'И' if letter == 'Й'
    letter
  end

  def normalized_letters
    @letters.map { |letter| normalize_letter(letter) }
  end
end
