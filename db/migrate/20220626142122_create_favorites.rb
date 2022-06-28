class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quote, null: false, foreign_key: true

      t.timestamps
    end

    # enforce the uniqueness of the combination of the user_id and quote_id:
    add_index :favorites, [:user_id, :quote_id], unique: true
  end
end
