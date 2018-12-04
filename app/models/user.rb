class User < ApplicationRecord
  validates :name, presence: true
  validates_inclusion_of :borough, in: ["New York", "Bronx", "Staten Island", "Queens", "Brooklyn"]

end
