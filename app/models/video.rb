class Video < ApplicationRecord

  belongs_to :user
  has_many :contents, :dependent => :destroy
  has_many :favorites, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :fans, :through => :favorites, :source => :user

  validates :user_id, :presence => true
  validates :url, :presence => true

default_scope { order("created_at DESC") }
end
