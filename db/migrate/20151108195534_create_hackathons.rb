class CreateHackathons < ActiveRecord::Migration
  def change
    create_table :hackathons do |t|
      t.string :name
      t.datetime :start
      t.datetime :ends
      t.references :location
      #t.references :teams, index: true, foreign_key: true
      t.string :picture
      t.string :link
      t.references :languages
      t.references :frameworks
      t.string :github
      t.string :prize
      t.references :rules
      t.references :projects
      t.references :tags
      t.references :category
      t.references :user, index: true, foreign_key: true
      t.string :desc

      t.timestamps null: false
    end
  end
end
