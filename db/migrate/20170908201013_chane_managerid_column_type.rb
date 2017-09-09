class ChaneManageridColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :employees, :manager_id, :integer
  end
end
