class CreateDirectors < ActiveRecord::Migration[7.0]
  def change
    create_table :directors do |t|
      t.string :piece
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :url
      t.string :musiker
      t.string :choreo
      t.boolean :premiere

      t.timestamps
    end
  end
end
