class MilitaryTime < ApplicationRecord
  validates :military_time, presence: true, uniqueness: true,
    numericality: { only_integer: true, less_than: 2400, greater_than_or_equal_to: 0 }
end
