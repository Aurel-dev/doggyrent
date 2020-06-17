class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :race
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.integer :price
      t.string :description
      t.timestamps
    end
  end
end
