class Article < ApplicationRecord
  # 記事を書いた会員を参照するメソッド名は"writer"とする
  belongs_to :writer, class_name: "Member", foreign_key: "member_id"

  # 女性会員限定のスコープを設定(articlesコントローラのindexアクションで使用)
  scope :open_to_women_only, -> { where(women: false)}

  # 空白は禁止
  validates :title, presence: true
  validates :content, presence: true
end
