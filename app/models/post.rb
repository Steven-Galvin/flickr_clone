class Post < ApplicationRecord
belongs_to :user

  validates :caption, presence: true
  has_attached_file :picture
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
