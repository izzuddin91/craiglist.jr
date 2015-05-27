class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |p|
      p.integer :id
      p.string :post
      p.integer :category_id
      p.timestamp
    end
  end
end
