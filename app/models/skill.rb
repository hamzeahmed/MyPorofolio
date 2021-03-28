class Skill < ApplicationRecord
  includes Placeholder
  validates :title, :persentage_utilized, presence:true
  after_initialize :set_defaults
  def set_defaults
    self.badge ||=  Placeholder.image_geneartor(heigh:250, width:250)
  end
end
