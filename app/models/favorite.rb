class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :video

  validates :user_id, :presence => true
  validates :video_id, :presence => true, :uniqueness => { :scope => :user_id }

  validates :video_id, :uniqueness => {:scope => :user_id, :message => "Already added to favorites"}


end
