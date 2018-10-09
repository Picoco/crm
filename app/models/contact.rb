class Contact < ApplicationRecord
  GRADES = [ 1, 2, 3, 4, 5 ]
  has_many :logs
  belongs_to :user
  belongs_to :state
  validates :email, :first_name, :last_name, presence:true
  validates :grade, inclusion: { in: GRADES }
end
