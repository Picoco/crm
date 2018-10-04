class Contact < ApplicationRecord
  belongs_to :user
  belongs_to :state
  validates :email, :first_name, :last_name, presence:true
end
