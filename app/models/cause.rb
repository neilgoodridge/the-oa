class Cause < ApplicationRecord
  has_many :tasks
  has_one_attached :photo
end
