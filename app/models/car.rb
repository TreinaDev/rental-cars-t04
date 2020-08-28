class Car < ApplicationRecord
  belongs_to :car_model
  has_many :car_rentals

  enum status: { available: 10, rented: 20, maintenance: 30 }

  def description
    "#{car_model.name} - #{color} - #{license_plate}"
  end
end
