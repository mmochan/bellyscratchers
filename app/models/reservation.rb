class Reservation < ActiveRecord::Base
  #validates :mobile, phone: { possible: true, types: [:mobile] }
  validates :name, :mobile, :start_date, :end_date,  presence: true
  validate :valid_number, :start_date_not_in_the_past, :end_date_not_before_start_date


  belongs_to :user
  has_and_belongs_to_many :dogs

  def valid_number
    errors.add(:mobile, "Incorrectly formatted number") unless Phonelib.valid?(mobile) 
  end

  def start_date_not_in_the_past
    errors.add(:start_date, "Start date is in the past") unless start_date > Time.now - 1.day
  end

  def end_date_not_before_start_date
    errors.add(:end_date, "End date must be after start date") unless start_date  < end_date
  end

  def self.add_dogs_to_reservation dogs, reservation
    @dogs = []
    params[:reservation][:dogs].each do | id |
      @dogs << Dog.find(id)
    end        
    @reservation.dogs = @dogs
  end

end
