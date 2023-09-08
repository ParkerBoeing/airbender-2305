require 'rails_helper'

RSpec.describe "Search page" do

  describe "search_index page" do
    it "displays search results" do
      visit root_path
      save_and_open_page
      expect(page).to have_link("Parasite")
      click_link "Parasite"


    end
  end
end

