class Article < ApplicationRecord
  # 記事を書いた会員を参照するメソッド名は"writer"とする
  belongs_to :writer, class_name: "Member", foreign_key: "member_id"

  # ユーザが既にいいね！をしているかどうか確認
  has_many :likes, dependent: :destroy
  def like_member(member_id)
    likes.find_by(member_id: member_id)
  end

  # 女性会員限定のスコープを設定(articlesコントローラのindexアクションで使用)
  scope :open_to_women_only, -> { where(women: false)}

  # 空白は禁止
  validates :title, presence: true
  validates :content, presence: true
end
