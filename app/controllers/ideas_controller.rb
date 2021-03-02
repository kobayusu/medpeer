class IdeasController < ApplicationController
  before_action :search_category, only: [:index, :search]
  def index
    @ideas = Idea.all
    @categories = Category.all
  end

  def search
    @results = @p.result.includes(:category) 
  end

  def new
    @idea_category = IdeaCategory.new(idea_params)
  end

  def create
    binding.pry
    @idea_category = IdeaCategory.new(idea_params)
    if @idea_category.valid?
      @idea_category.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  private 
  def idea_params
    params.permit(:name, :body)
  end
  def search_category
    @p = Category.ransack(params[:q])  
  end
end
