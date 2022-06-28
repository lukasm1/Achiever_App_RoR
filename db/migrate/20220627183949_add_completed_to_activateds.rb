class AddCompletedToActivateds < ActiveRecord::Migration[7.0]
  def change
    add_column :activateds, :completed, :boolean, default: false
  end
end
