class AddPlanetIdToMissions < ActiveRecord::Migration[7.0]
  def change
    add_column :missions, :planet_id, :integer
  end
end
