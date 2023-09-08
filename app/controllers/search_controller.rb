class SearchController < ApplicationController
  def index
    characters = CharacterFacade.find_characters(params[:nation])
    require 'pry'; binding.pry
  end
end