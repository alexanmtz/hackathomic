class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.references :team, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :picture
      t.string :desc
      t.references :languages, index: true, foreign_key: true
      t.references :frameworks, index: true, foreign_key: true
      t.references :tags, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
