class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :video

  validates :user, :presence => true
  validates :video, :presence => true, :uniqueness => { :scope => :user }

end
