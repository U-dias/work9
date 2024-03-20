class AddUpdateToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :updated_on, :datetime
  end
end
