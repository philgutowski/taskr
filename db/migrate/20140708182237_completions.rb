class Completions < ActiveRecord::Migration
  def change
    add_column :tasks, :completed, :boolean, default: false, null: false
  end
end
