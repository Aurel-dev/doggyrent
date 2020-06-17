class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.date :check_in_date
      t.date :check_out_date
      t.integer :price_per_day
      t.integer :site_fees
      t.integer :amount_paid
      t.integer :is_refund
      t.date :canceled_date
      t.integer :refund_paid
      t.date :booking_date
      t.references :dog, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
