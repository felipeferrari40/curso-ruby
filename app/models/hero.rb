class Hero < ApplicationRecord
  validates :name, presence: true

  scope :sorted_by_name, -> {order(:created_at)}
end
