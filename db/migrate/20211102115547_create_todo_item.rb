class CreateTodoItem < ActiveRecord::Migration[6.1]
  def up
    create_table :todo_items do |t|
      t.string :title, null: false
      t.text :description, null: true
      t.timestamps null: false
    end
  end

  def down
    drop_table :todo_items
  end
end
