class Bay < ApplicationRecord
  validates_presence_of :name, :province, :city, :address
end
