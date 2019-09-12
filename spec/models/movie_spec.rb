require "rails_helper"

RSpec.describe Movie, type: :model do
  describe "validation" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:user_id) }
    it { should allow_value("https://www.youtube.com").for(:url) }
    it { should_not allow_value("www.youtube.com").for(:url) }
    it { should validate_length_of(:title).is_at_most(100) }
    it { should validate_length_of(:url).is_at_most(200) }
    it { should validate_length_of(:description).is_at_most(255) }
  end
end
