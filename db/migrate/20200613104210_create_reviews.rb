class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :booking_id
      t.string :user_type
      t.string :review_by_user
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
