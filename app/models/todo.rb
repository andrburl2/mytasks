class Todo < ApplicationRecord
  belongs_to :project, dependent: :destroy

  validates :text, presence: true, length: { in: 2..40 }
end
