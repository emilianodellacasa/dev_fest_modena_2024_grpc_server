class Command < ApplicationRecord
  belongs_to :device
  scope :pending, -> { where(status: 'pending') }
end
