class CreateShows < ActiveRecord::Migration[4.2]
  def change
    create_table :shows do |s|
      s.string :name
      s.string :network
      t.string :day 
      t.integer :rating 
    end
  end
end