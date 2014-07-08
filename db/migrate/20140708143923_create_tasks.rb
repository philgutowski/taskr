class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :user_id, null:false

      t.timestamps null: false
    end

    add_index :tasks, :user_id
    #always index forign keys
  end
end
