class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories, primary_key: "id", id: :bigint, auto_increment: true, default: nil, force: true do |t|
      t.string :name, null:false, unique: true
    end

  end
end
 