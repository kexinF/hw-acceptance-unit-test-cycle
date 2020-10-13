# source https://api.rubyonrails.org/classes/ActiveRecord/Migration.html
class CreateMovies < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :release_date
      t.timestamps
    end
  end

  def down
    drop_table :movies
  end
end
