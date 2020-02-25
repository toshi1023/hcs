class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    # フォロー機能の追加
    create_table :relationships do |t|
      t.references :member, foreign_key: true
      # {to_table: :**}　→　follow_idの参照先テーブルをmembersテーブルに指定
      t.references :follow, foreign_key: { to_table: :members }

      t.timestamps

      # uniqueをtrueにすることで同じユーザを2回以上フォローすることを防ぐ
      t.index [:member_id, :follow_id], unique: true
    end
  end
end
