class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.integer :league_id
      t.integer :player_id
    end
  end
end
