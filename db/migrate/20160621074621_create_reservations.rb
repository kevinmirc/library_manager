class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :item, index: true, foreign_key: true
      t.references :owner, index: true
      t.datetime :due_date
      t.text :notes

      t.timestamps null: false
    end
  end
end
