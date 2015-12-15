require "rails_helper"

RSpec.describe User, type: :model do
  before { @user = User.new(name: "Me", email: "danijuyusuf@mail.com") }
  subject { @user }
  it { should respond to(:name) }
  it { should respond to(:email) }
end
