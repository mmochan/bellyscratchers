class Reservation < ActiveRecord::Base
  validates_presence_of :number, :on => :create, :message => "can't be blank"
end
