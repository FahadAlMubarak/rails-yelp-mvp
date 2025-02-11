class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }, numericality: { only_integer: true }
  validates :content, presence: true
end
