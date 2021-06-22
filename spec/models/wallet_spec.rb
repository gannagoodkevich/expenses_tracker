require 'rails_helper'

RSpec.describe Wallet, type: :model do
  it "is valid with user and amount" do
    exp = create(:wallet, :with_amount)
    expect(exp).to be_valid
  end

  it "is not valid without user" do
    exp = build(:wallet, :without_user)
    expect(exp).not_to be_valid
  end
end
