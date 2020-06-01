class CreatePlayGames < ActiveRecord::Migration[5.2]
  def change
    create_table :play_games do |t|
    	t.integer :count
      t.string :image_url	
      t.timestamps
    end
  end
end
