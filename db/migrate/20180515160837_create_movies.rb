class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :duration
      t.references :director_id, foreign_key: true
      t.timestamp :release_date
      t.references :adress_id, foreign_key: true

      t.timestamps
    end
  end
end
