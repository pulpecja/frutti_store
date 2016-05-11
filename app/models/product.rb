class Product < ActiveRecord::Base
  has_one :category

  validates :name, presence: true

  def photo
    "#{photo_url}"
  end

  def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      "Remove from"
    else
      "Add to"
    end
  end
end
