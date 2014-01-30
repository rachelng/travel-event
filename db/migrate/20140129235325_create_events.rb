class CreateEvents < ActiveRecord::Migration
  def change
  	drop_table :events
  	
    create_table :events do |t|
      t.string :artist
      t.string :venue
      t.string :location
      t.datetime :concert_date
      t.text :description
      t.string :artist_image_url

      t.timestamps
    end


  end

end
