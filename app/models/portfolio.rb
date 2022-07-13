class Portfolio < ApplicationRecord
  validates :title, :body, :main_image, :thumb_image, presence: true

  def self.angular
    where(subtitle: "Angular")
  end
  scope :ruby_on_rails_portfolio, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/650"
    self.thumb_image ||= "https://via.placeholder.com/350"
  end
end
