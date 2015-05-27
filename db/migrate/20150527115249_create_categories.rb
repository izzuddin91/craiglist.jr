class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :id
      t.string :category
      t.timestamp
    end
  end
end
