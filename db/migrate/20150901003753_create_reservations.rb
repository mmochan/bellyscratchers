class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :mobile
      t.date :start_date
      t.date :end_date
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
