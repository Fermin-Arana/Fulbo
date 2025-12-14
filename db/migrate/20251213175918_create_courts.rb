class CreateCourts < ActiveRecord::Migration[8.1]
  def change
    create_table :courts do |t|
      t.integer :max_players
      t.text :description

      t.timestamps
    end
  end
end
