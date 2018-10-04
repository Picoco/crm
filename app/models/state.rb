class State < ApplicationRecord
  CATEGORIES = [ "not contacted", "ongoing", "called"]
  GRADES = [ 1, 2, 3, 4, 5 ]
  has_many :contacts
  validates :category, inclusion: { in: CATEGORIES }
  validates :grade, inclusion: { in: GRADES }
  validates :comment, length: { minimum: 10 }
end
