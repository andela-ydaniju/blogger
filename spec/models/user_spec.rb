require "rails_helper"

RSpec.describe User, type: :model do
  user = User.new(name: "Me", email: "danijuyusuf@mail.com", password: "foobar",
   password_confirmation: "foobar")
  context "User" do
    it "returns true if user is valid" do
      expect(user.valid?).to be true
    end

    it "has email which cannot be empty" do
      user.email = ""
      expect(user.valid?).to be false
    end

    it "has name which cannot be empty" do
      user.name = ""
      expect(user.valid?).to be false
    end

    it "has name of length less than 50" do
      expect(user.name.length).to be <= 50
    end

    it "has email of length less than 30" do
      expect(user.email.length).to be <= 30
    end

    it "has unique email" do
      duplicate_user = user.dup
      duplicate_user_email = user.email
      expect(duplicate_user.valid?).to be false
    end

    it "has unique email" do
      duplicate_user = user.dup
      duplicate_user_email = user.email.upcase
      expect(duplicate_user.valid?).to be false
    end

    # it "accepts only valid emails" do
    #   valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
    #     first.last@foo.jp alice+bob@baz.cn]
    #   valid_addresses.each do |valid_address|
    #     user.email = valid_address
    #     expect(user.valid?).to be true
    #   end
    # end
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
