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
    binding.pry
    if category_id = Category.find_by(name: params[:idea][:category_id]).id
      Idea.create(idea_params.merge(Category_id: category_id))
      @idea = Idea.new(idea_params)
      if @idea.valid?
         @idea.save
         redirect_to :index
      else
         render :new
      end
    else

    end
  end

  private 
  def idea_params
    params.require(:idea).permit(:body)
  end
end
