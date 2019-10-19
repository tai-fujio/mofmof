class Station < ApplicationRecord
  belongs_to :real_estate , optional: true
end
