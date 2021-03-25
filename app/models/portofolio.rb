class Portofolio < ApplicationRecord
  validates :title,:body,:main_image, :thumb_image, presence: true
  def self.angular
    where(sub_title: "Angular")
  end
  scope :ruby_on_rails, -> {where(sub_title: "Ruby On Rails ")}
end
