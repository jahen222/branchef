class Specialty < ApplicationRecord
  has_one :breakfast
  has_one :brunch
  has_one :lunch
  has_one :dinner

end
