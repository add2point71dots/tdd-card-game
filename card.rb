class Card

  attr_reader :suit, :value

  def initialize(suit, value)
    if [:hearts, :diamonds, :clubs, :spades].include?(suit)
      @suit = suit
    else
      raise ArgumentError.new "The suit must be :hearts, :diamonds, :clubs, or :spades"
    end

    if (1..13).include?(value) && value.class == Integer
      @value = value
    else
      raise ArgumentError.new "The value must be between 1 and 13"
    end
  end

end
