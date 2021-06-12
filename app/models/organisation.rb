class Organisation < ApplicationRecord
  belongs_to :cause
  has_many_attached :photos
end
