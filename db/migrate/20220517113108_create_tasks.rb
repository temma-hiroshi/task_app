class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :start_day
      t.date :end_day
      t.boolean :all_day

      t.timestamps
    end
  end
end
