class DogsReservation < ActiveRecord::Base
  belongs_to :dog
  belongs_to :reservation
end
