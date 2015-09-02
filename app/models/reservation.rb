class Reservation < ActiveRecord::Base
  #validates :mobile, phone: { possible: true, types: [:mobile] }
  validates :name, :mobile, :start_date, :end_date,  presence: true
  validate :valid_number

  serialize :dogs, Array


  def valid_number
    errors.add(:mobile, "Incorrectly formatted number") unless Phonelib.valid?(mobile) 
  end
end
