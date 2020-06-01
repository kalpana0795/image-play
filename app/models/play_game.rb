class PlayGame < ApplicationRecord
  validates_presence_of :image_url, :count
  validates :count, numericality: { only_integer: true,
                                      greater_than_or_equal_to: 1,
                                      less_than_or_equal_to: 20 }

end
