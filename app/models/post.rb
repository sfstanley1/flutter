class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :user_id, presence: true,length: { maximum: 140 } #maximum char limit 140
  default_scope -> { order(created_at: :desc) }
end
