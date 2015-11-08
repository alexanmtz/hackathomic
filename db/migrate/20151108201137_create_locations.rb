class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :site
      t.string :facebook
      t.string :twitter
      t.string :contact
      t.string :email

      t.timestamps null: false
    end
  end
end
