class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :sex
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
