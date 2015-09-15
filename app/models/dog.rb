require 'carrierwave/orm/activerecord'

class Dog < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader

  #process resize_to_limit: [200, 200]

  belongs_to :user
  has_and_belongs_to_many :reservations

end
