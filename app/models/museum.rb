class Museum < ApplicationRecord
  belongs_to :borough

  validates :title, presence: true
  validates :title, uniqueness: true
  # validates_inclusion_of :borough, in: ["New York", "Bronx", "Staten Island", "Queens", "Brooklyn"]
  validates :zip, length: { minimum: 4 }
  
  # def coordinates
  #   self.coordinate_x
  # end
end
