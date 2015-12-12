class Product < ActiveRecord::Base
  has_one :category

  validates :name, presence: true

  def photo
    "#{photo_url}"
  end
end
