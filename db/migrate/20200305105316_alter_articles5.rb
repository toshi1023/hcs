class AlterArticles5 < ActiveRecord::Migration[5.2]
  def change
    # いいね！の数をカウント
    add_column :articles, :likes_count, :integer
  end
end
