class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :video


  validates :user, :presence => true
  validates :video, :presence => true
  validates :comment, :presence => true

end
