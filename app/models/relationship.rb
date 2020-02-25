class Relationship < ApplicationRecord
  # フォロー機能の設定(自分側)
  belongs_to :follower, class_name: 'Member'
  # フォロー機能の設定(フォローしているユーザ側)
  belongs_to :followed, class_name: 'Member'

  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
