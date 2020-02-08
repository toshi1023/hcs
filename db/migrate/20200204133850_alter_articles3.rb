class AlterArticles3 < ActiveRecord::Migration[5.2]
  def change
    # 外部キーのカラムを削除
    remove_foreign_key :articles, :member
    remove_reference :articles, :member
  end
end
