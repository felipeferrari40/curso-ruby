class Hero < ApplicationRecord
  validates :name, :token, presence: true

  scope :by_token, ->(token) { where(token) }
  scope :search, ->(term) { where('LOWER(name) LIKE ?', "%#{term.downcase}%") if term.present? }
  scope :sorted_by_name, -> { order(:created_at) }
end