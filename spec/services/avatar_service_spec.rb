require 'rails_helper'

describe AvatarService do
  describe "instance methods" do
    describe "#characters" do
      it "returns characters from a nation", :vcr do
        search = AvatarService.new.characters("fire nation")
        expect(search).to be_an Array
        expect(search[0]).to be_an Hash
        character_data = search.first

        expect(character_data).to have_key :_id
        expect(character_data[:_id]).to be_a(String)

        expect(character_data).to have_key :allies
        expect(character_data[:allies]).to be_an(Array)

        expect(character_data).to have_key :enemies
        expect(character_data[:enemies]).to be_an(Array)

        expect(character_data).to have_key :photoUrl
        expect(character_data[:photoUrl]).to be_a(String)

        expect(character_data).to have_key :name
        expect(character_data[:name]).to be_a(String)

        expect(character_data).to have_key :affiliation
        expect(character_data[:affiliation]).to be_a(String)
      end
    end
  end
end