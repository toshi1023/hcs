class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    # 　記事のタイトルと内容を格納
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
