class Alert < ApplicationRecord
  validates :location, presence: true
  validates :alert_time, presence: true
end
