class CreateToDoList2s < ActiveRecord::Migration
  def change
    create_table :to_do_list2s do |t|
      t.string :task_name
      t.string :description
      t.string :status

      t.timestamps null: false
    end
  end
end
