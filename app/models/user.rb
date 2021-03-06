class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, :dependent => :destroy
  has_many :favorites, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :videos, :dependent => :destroy

  validates :username, :presence => true, :uniqueness => true


end
