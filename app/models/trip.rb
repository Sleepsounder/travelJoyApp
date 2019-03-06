class Trip < ApplicationRecord
  has_many :trip_events, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 3 }
  validates :start_date, presence: true
  validates :end_date, presence: true 
end
