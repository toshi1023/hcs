class Like < ApplicationRecord
  # 記事のいいね！機能搭載
  belongs_to :article, counter_cache: :likes_count
  belongs_to :member
end
