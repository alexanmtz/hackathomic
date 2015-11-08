class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.string :picture
      t.string :location

      t.timestamps null: false
    end
  end
end
