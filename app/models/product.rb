class Product < ApplicationRecord

  scope :search, lambda {|query| where(["title LIKE ?","%#{query}%" ])}
  validates :title, :description, :image_url, presence: true

  validates :title, length: {minimux: 2, maximum: 10}

  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  validates :title, uniqueness: true

  validates :image_url, allow_blank: true, format: {

      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a url for GIF, JPG or PNG image.'
  }


end
