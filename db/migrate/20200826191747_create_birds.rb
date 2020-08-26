class CreateBirds < ActiveRecord::Migration[6.0]
  def change
    create_table :birds do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.references :tree

      t.timestamps
    end
  end
end
