class AlterArticles2 < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :posted_at, :datetime
  end
end
