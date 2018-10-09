class State < ApplicationRecord
  CATEGORIES = [ "not-contacted", "on-going", "called"]
  has_many :contacts
  validates :category, inclusion: { in: CATEGORIES }
end
