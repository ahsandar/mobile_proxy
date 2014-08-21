class AddCategories < ActiveRecord::Migration
  def change
  	Category.new(:title=> "News").save
  	Category.new(:title=> "Sports").save
  	Category.new(:title=> "Tech").save
  end
end
