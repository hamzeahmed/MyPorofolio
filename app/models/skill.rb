class Skill < ApplicationRecord
  validates :title, :persentage_utilized, presence:true
end
