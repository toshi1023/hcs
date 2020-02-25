class AlterRelationship < ActiveRecord::Migration[5.2]
  def change
    # もともと設定したフォロー機能のカラムを削除
    remove_column :relationships, :member
    remove_column :relationships, :follow

    # フォロー機能のカラムを新しく設定
    add_column :relationships, :follower_id, :integer
    add_column :relationships, :following_id, :integer

    add_index :relationships, :follower_id
    add_index :relationships, :following_id
    add_index :relationships, [:follower_id, :following_id], unique: true
  end
end
