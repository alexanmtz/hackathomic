class AddSponsorToHackathon < ActiveRecord::Migration
  def change
    add_reference :hackathons, :sponsor, index: true, foreign_key: true
  end
end
