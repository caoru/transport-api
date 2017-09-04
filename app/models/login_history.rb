class LoginHistory < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates_presence_of :date, :car_id, :user_id
end
