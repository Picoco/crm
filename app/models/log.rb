class Log < ApplicationRecord
  belongs_to :contact
  validates :comment, presence:true
  validates :comment, length: { minimum: 10 }
end
