class Portfolio < ApplicationRecord
  include Placeholder
  validates :title, :body, :main_image, :thumb_image, presence: true

  def self.angular
    where(subtitle: "Angular")
  end
  scope :ruby_on_rails_portfolio, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '650')
    self.thumb_image ||= Placeholder.image_generator(height: '350')
  end
end
