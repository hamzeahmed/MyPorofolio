class Portofolio < ApplicationRecord
  include Placeholder
  validates :title,:body,:main_image, :thumb_image, presence: true
  def self.angular
    where(sub_title: "Angular")
  end
  scope :ruby_on_rails, -> {where(sub_title: "Ruby On Rails ")}
  after_initialize :set_defaults
  def set_defaults
    self.main_image  ||= Placeholder.image_geneartor(heigh:600, width:400)
    self.thumb_image ||= Placeholder.image_geneartor(heigh:350, width:200)
  end
end
