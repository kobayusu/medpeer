class IdeasController < ApplicationController
  def index
    @ideas = Idea.available
  end
end
