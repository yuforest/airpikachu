class ChangeListingNameOfRoom < ActiveRecord::Migration[5.2]
  def change
    rename_column :rooms, :listing_home, :listing_name
  end
end
