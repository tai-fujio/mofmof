class Station < ApplicationRecord
  belongs_to :real_estate , optional: true
  # validates :station_name, presence: true
  # validates :station_line, presence: true
  # validates :walk_from, presence: true
end
