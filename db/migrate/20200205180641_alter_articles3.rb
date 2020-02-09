class AlterArticles3 < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :women_only, :boolean, null: false, default: false
  end
end
