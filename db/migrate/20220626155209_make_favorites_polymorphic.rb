class MakeFavoritesPolymorphic < ActiveRecord::Migration[7.0]
  def change
    rename_column :favorites, :quote_id, :likeable_id
    add_column :favorites, :likeable_type, :string

    remove_index :favorites, [:user_id, :likeable_id]
    add_index :favorites, [:user_id, :likeable_id, :likeable_type], unique: true

    # adding this for better speed:
    add_index  :favorites, [:likeable_id, :likeable_type]
  end
end
