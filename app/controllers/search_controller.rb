class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.find_characters(params[:nation])
  end
end