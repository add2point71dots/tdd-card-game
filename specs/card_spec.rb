require_relative 'spec_helper'
require_relative '../card'

describe Card do
  before do #does this before any testing every time
    @card = Card.new(:hearts, 11)
  end

  describe "Checking Card value" do
    it "has value 11" do
      @card.value.must_equal 11
    end
  end

  describe "Checking Card suit" do
    it "has suit :hearts" do
      @card.suit.must_equal :hearts
    end

    it "errors if given an invalid suit" do
      proc { Card.new(:pokemon, 11) }.must_raise ArgumentError
    end

    it "errors if given an invalid value" do
      proc { Card.new(:hearts, 15) }.must_raise ArgumentError
      proc { Card.new(:hearts, 0) }.must_raise ArgumentError
      proc { Card.new(:hearts, 5.5) }.must_raise ArgumentError
    end
  end

end
