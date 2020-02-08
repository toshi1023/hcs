class AtterArtciles < ActiveRecord::Migration[5.2]
  def change
    # membersテーブルのIDを外部参照
    add_reference :articles, :member, foreign_key: true
    remove_column :articles, :posted_at
  end
end
