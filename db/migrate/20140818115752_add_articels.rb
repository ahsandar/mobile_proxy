class AddArticels < ActiveRecord::Migration
  def change
  	Article.new(:title=> "BBC", :category_id=> 1, :url => "http://www.bbc.co.uk", :body=> "BBC Homepage").save
  	Article.new(:title=> "Sky", :category_id=> 1, :url => "http://www.bbc.co.uk", :body=> "Sky Homepage").save

  	Article.new(:title=> "Goal", :category_id=> 2, :url => "http://www.goal.com", :body=> "GOAL Homepage").save
  	Article.new(:title=> "Cricinfo", :category_id=> 2, :url => "http://www.espncricinfo.com", :body=> "Crininfo Homepage").save

  	Article.new(:title=> "Engadget", :category_id=> 3, :url => "http://www.engadget.com", :body=> "Engadget Homepage").save
  	Article.new(:title=> "Gizmodo", :category_id=> 3, :url => "http://www.gizmodo.com", :body=> "Gizmodo Homepage").save
  end
end
