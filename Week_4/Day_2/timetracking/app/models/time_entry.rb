class TimeEntry < ApplicationRecord
  belongs_to :project

  validates :datetime, presence: true
  validates :hours, presence: true, numericality: true

  validates :minutes, presence: true, numericality: true
end
