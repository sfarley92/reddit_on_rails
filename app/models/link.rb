class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :title, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true

  # self.per_page = 10
end
