class RenameDistanceOfEarthToDistanceFromEarth < ActiveRecord::Migration[7.0]
  def change
    rename_column :planets, :distance_of_earth, :distance_from_earth
  end
end
