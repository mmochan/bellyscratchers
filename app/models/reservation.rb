class Reservation < ActiveRecord::Base
  #validates :mobile, phone: { possible: true, types: [:mobile] }
  validates :name, :mobile, :start_date, :end_date,  presence: true
  validate :valid_number

  belongs_to :user
  has_and_belongs_to_many :dogs

  def valid_number
    errors.add(:mobile, "Incorrectly formatted number") unless Phonelib.valid?(mobile) 
  end

  def self.add_dogs_to_reservation dogs, reservation
    @dogs = []
    params[:reservation][:dogs].each do | id |
      @dogs << Dog.find(id)
    end        
    @reservation.dogs = @dogs
  end

end
