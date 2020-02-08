class Member < ApplicationRecord
  # セキュアなパスワード機能を設定
  has_secure_password

  # articlesテーブルと多対単で紐づけ
  has_many :articles, dependent: :destroy

  # 空白を禁止
  validates :name, presence: true
  validates :full_name, presence: true
  validates :birthday, presence: true
  validates :sex, presence: true
  validates :email, presence: true
end
