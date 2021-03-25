class Portofolio < ApplicationRecord
  validates :title,:body,:main_image, :thumb_image, presence: true
  def self.angular
    where(sub_title: "Angular")
  end
  scope :ruby_on_rails, -> {where(sub_title: "Ruby On Rails ")}
  after_initialize :set_defaults
  def set_defaults
    self.main_image  ||=  "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/350x200"
  end
end
