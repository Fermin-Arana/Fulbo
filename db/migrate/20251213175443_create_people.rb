class CreatePeople < ActiveRecord::Migration[8.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :dni
      t.string :email
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
