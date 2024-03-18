class AddEndToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :end, :date
  end
end
