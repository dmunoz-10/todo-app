class CreateTodos < ActiveRecord::Migration[8.1]
  def change
    create_table :todos do |t|
      t.string :description, null: false

      t.timestamps
    end
  end
end
