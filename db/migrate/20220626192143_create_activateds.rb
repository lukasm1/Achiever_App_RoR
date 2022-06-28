class CreateActivateds < ActiveRecord::Migration[7.0]
  def change
    create_table :activateds do |t|
      t.references :user, null: false, foreign_key: true
      t.references :habit, null: false, foreign_key: true

      t.timestamps
    end

    # enforce the uniqueness of the combination of the user_id and quote_id:
    add_index :activateds, [:user_id, :habit_id], unique: true
  end
end
