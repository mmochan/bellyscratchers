require 'carrierwave/orm/activerecord'

class Dog < ActiveRecord::Base
  include CarrierWave::MiniMagick

  process resize_to_fill: [200, 200]

  belongs_to :user
  has_and_belongs_to_many :reservations

  mount_uploader :avatar, AvatarUploader
end
