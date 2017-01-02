class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates :title, presence: true
  has_many :group_relatoinships
  has_many :members, through: :group_relatoinships, source: :user
end
