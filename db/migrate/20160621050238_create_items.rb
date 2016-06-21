class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :library
      t.string :title
      t.string :type
      t.timestamps null: false
    end
  end
end
