require 'rails_helper'

RSpec.describe PlayGame, type: :model do
  it { should validate_presence_of(:count) }
  it { should validate_presence_of(:image_url) }
  it { should validate_numericality_of(:count).is_greater_than_or_equal_to(1) }
  it { should validate_numericality_of(:count).is_less_than_or_equal_to(20) }
end
