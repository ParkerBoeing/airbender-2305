require 'rails_helper'

RSpec.describe "Search page" do

  describe "search_index page" do
    it "displays search results", :vcr do
      visit root_path
      select "Fire Nation"
      click_on "Search For Members"

      expect(page).to have_content("Total character count: 20")

      within "#5cf5679a915ecad153ab68da" do
        expect(page).to have_css('img')
        expect(page).to have_content("Name: Azula")
        expect(page).to have_content("ID: 5cf5679a915ecad153ab68da")
        expect(page).to have_content("Enemies: [\"Iroh\", \"Zuko\", \"Kuei\", \"Long Feng\", \"Mai\", \"Ty Lee\", \"Ursa \"]")
        expect(page).to have_content("Allies: [\"Ozai\", \"Zuko \"]")
        expect(page).to have_content("Affiliation: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls")
      end
    end
  end
end

