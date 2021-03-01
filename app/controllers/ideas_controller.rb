class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    @categories = Category.all
  end

  def new
    @idea = Idea.new
    @category = Category.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  private 
  def idea_params
    params.require(:idea).permit(:body).merge(category_id: categories.id)
  end
end
