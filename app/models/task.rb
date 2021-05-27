class Task < ApplicationRecord
  belongs_to :cause
  has_many :actions
  has_many :users, through: :actions
end
