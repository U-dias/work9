class AddStartToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :start, :date
  end
end
