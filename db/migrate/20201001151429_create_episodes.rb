class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.integer :episode_number
      t.integer :season_number
      t.decimal :viewers

      t.timestamps
    end
  end
end
