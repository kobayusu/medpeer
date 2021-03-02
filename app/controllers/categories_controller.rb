class CategoriesController < ApplicationController
  before_action :search_idea, only: [:index, :search]
  def index
    
  end

  def search
  end
end
