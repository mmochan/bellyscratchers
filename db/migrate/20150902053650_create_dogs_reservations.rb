class CreateDogsReservations < ActiveRecord::Migration
  def change
    create_table :dogs_reservations do |t|
      t.belongs_to :dog, index: true, foreign_key: true
      t.belongs_to :reservation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
