class AddScheduleMemoToTask < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :schedule_memo, :string
  end
end
