require 'rails_helper'

RSpec.describe Character do
  describe "initialize" do
    it "has attributes" do
      character_attributes = {
        id: 123,
        name: "Test Chara",
        affiliation: "This is a test movie.",
        photo_url: "fakephotourl.com",
        enemies: ["jerks", "punks"],
        allies: ["cool folks", "cooler folks"]
      }
      character = Character.new(character_attributes)

      expect(character.id).to eq(character_attributes[:id])
      expect(character.name).to eq(character_attributes[:name])
      expect(character.affiliation).to eq(character_attributes[:affiliation])
      expect(character.enemies).to eq(character_attributes[:enemies])
      expect(character.allies).to eq(character_attributes[:allies])
      expect(character.photo_url).to eq(character_attributes[:photo_url])
    end
  end
end
