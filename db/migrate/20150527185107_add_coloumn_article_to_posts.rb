class AddColoumnArticleToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :article, :string
  end
end
