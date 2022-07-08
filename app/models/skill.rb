class Skill < ApplicationRecord
  validates :title, :body, :percent_utilized, presence: true
end
