class IdeaCategory
  include ActiveModel::Model
  attr_accessor :body, :name, :category_id
  
  validates :name, :body ,presence: true
  
  def save
    category = Category.create(name: name)
    Idea.create(body: body).marge(category_id: category.id)
  end
end