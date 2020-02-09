class AlterArticles4 < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :women_only, :women
  end
end
