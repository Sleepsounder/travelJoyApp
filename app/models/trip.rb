class Trip < ApplicationRecord
  # belongs_to :user
  validates :title, presence: true,
                    length: { minimum: 3 }
  validates :start_date, presence: true
  validates :end_date, presence: true 
end
