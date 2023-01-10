class AddScientistIdToMissions < ActiveRecord::Migration[7.0]
  def change
    add_column :missions, :scientist_id, :integer
  end
end
