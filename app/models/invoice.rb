class Invoice < ApplicationRecord
  has_many :line_item
end
