class Member < ApplicationRecord
  # セキュアなパスワード機能を設定
  has_secure_password

  # articlesテーブルと多対単で紐づけ
  has_many :articles, dependent: :destroy

  scope :search, -> (search_params) do
    # search_paramsが空の場合は以降の処理を行わない
    return if search_params.blank?

    name_like(search_params[:name])
  end

  # nameが存在する場合、nameをlike検索する
  scope :name_like, -> (name) { where("name LIKE ?", "%#{name}%") if name.present? }

  # 空白を禁止
  validates :name, presence: true
  validates :full_name, presence: true
  validates :birthday, presence: true
  validates :sex, presence: true
  validates :email, presence: true
end
