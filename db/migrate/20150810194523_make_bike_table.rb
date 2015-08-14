class MakeBikeTable < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :model
      t.string :color
      t.integer :year
      t.string :bike_type
      t.integer :serial_number
      t.date :purchase_date
      t.integer :purchase_price
      t.string :receipt_document
      t.string :receipt_photo_url
    end
  end
end
