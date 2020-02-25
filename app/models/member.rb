class Member < ApplicationRecord
# セキュアなパスワード機能を設定
  has_secure_password

# articlesテーブルと多対単で紐づけ
  has_many :articles, dependent: :destroy

# フォロー機能の設定(自分がフォローしている側)
  has_many :follower, class_name: 'Relationship', foreign_key: 'follower_id', dependent: :destroy
  has_many :following_user, through: :follower, source: :followed
  # フォロー機能の設定(自分をフォローしているユーザ側)
  has_many :followed, class_name: 'Relationship', foreign_key: 'followed_id', dependent: :destroy
  has_many :follower_user, through: :followed, source: :follower


  def follow(member_id)
    follower.create(followed_id: member_id)
  end

  # フォローの解除(フォローしていれば)
  def unfollow(member_id)
    follower.find_by(followed_id: member_id).destroy
  end
  # フォローしているか確認　※friendsのindexビューとaccountsのfollow_tableビューで使用
  # 引数がmemberであることに注意！
  def following?(member)
    following_user.include?(member)
  end

# 会員検索機能を設定
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
