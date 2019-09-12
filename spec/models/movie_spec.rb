require "rails_helper"

RSpec.describe Movie, type: :model do
  describe "validation" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:user_id) }
    it { should allow_value("https://www.youtube.com").for(:url) }
    it { should_not allow_value("www.youtube.com").for(:url) }
  end
end
