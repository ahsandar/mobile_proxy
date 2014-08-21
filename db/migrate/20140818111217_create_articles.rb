class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :category_id 	
      t.string :title
      t.string :url
      t.string :body

      t.timestamps
    end
  end
end
