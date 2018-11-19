class RemoveBillboardRefFromArtists < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :billboard_id
  end
end
