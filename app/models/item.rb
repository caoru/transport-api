class Item < ApplicationRecord
  has_many :transports, foreign_key: :item_id

  validates_presence_of :name
end
