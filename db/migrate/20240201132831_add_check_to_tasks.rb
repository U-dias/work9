class AddCheckToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :check, :boolean
  end
end
