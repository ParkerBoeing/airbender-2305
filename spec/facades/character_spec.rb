require 'rails_helper'

describe CharacterFacade do
  before do
    @characters = CharacterFacade.find_characters("fire nation")
  end
  context "instance methods" do
    it "returns cast of a movie", :vcr do
      @characters.each do |character|
      expect(character).to be_a Character
      end
    end

    it "can count the cast of a movie", :vcr do
      expect(@characters.count).to eq(20)
    end
  end
end