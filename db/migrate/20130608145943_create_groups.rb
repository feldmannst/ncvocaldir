class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :location
      t.string :size
      t.string :style
      t.string :bio
      t.string :weburl
      t.string :fburl
      t.string :twitterurl
      t.string :youtubeurl
      
      t.timestamps
    end
  end
end
