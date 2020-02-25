class AlterRelationship3 < ActiveRecord::Migration[5.2]
  def change
    remove_column :relationships, :member_id
    remove_column :relationships, :follow_id
  end
end
