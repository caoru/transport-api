class Car < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :company
end
