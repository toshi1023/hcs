class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name, null: false     #ニックネーム
      t.string :full_name             #フルネーム
      t.string :email                 #メールアドレス
      t.date :birthday                #生年月日
      t.integer :sex, null: false, default: 1                 #性別（男:1）,（女:2）
      t.string :password, null: false                         #パスワード
      t.boolean :administrator, null: false, default: false   #管理者フラグ #現在はnull:falseを削除済み

      t.timestamps
    end
  end
end
