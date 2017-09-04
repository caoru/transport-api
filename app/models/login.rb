class Login < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates_presence_of :car_id, :user_id
end
