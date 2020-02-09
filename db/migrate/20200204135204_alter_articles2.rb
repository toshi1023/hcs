class AlterArticles4 < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :member
  end
end
