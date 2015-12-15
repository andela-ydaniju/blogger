require "rails_helper"

RSpec.describe User, type: :model do
  user = User.create!(name: "Me", email: "danijuyusuf@mail.com")
  context "User is valid" do
    it "returns true if user is valid" do
      expect(user.valid?).to be true
    end

    it "returns false if user is not valid" do
      user.email = ""
      expect(user.valid?).to be false
    end

    it "returns false if user is not valid" do
      user.name = ""
      expect(user.valid?).to be false
    end
  end

  context "has name and email attributes" do
    it "has name attribute" do
      expect(user.name.nil?).to be false
    end

    it "has email attribute" do
      expect(user.email.nil?).to be false
    end
  end
end
