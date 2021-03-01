class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    @categories = Category.all
  end

  private 
  def idea_params
    params.require(:idea).permit(:body).merge(category_id: categories.id)
  end
end
