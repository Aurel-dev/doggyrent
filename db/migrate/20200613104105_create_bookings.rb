class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :check_in_date
      t.integer :check_out_date
      t.integer :price_per_day
      t.integer :site_fees
      t.integer :amount_paid
      t.integer :is_refund
      t.date :canceled_date
      t.integer :refund_paid
      t.date :booking_date
      t.integer :dog_id
      t.string :status
      t.integer :check_out_session

      t.timestamps
    end
  end
end
