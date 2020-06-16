class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.date :birthdate
      t.string :review

      t.timestamps
    end
  end
end
