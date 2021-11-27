class Project < ApplicationRecord
  has_many :todos

  validates :title, presence: true, length: { in: 2..30 }
  validates_associated :todos
end
