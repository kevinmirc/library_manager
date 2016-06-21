class CreateLibrarians < ActiveRecord::Migration
  def change
    create_table :librarians do |t|

      t.timestamps null: false
    end
  end
end
