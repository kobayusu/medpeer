class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas, primary_key: "id", id: :bigint, auto_increment: true, default: nil, force: true do |t|
      t.references :category, null:false, foreign_key: true
      t.text   :body, null:false
    end
  end
end
