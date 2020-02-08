class AlterMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :administrator
    add_column :members, :administrator, :boolean, default: false
  end
end
