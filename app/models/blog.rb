class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :titile, use: :slugged
end
