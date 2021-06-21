require "rails_helper"

RSpec.describe SavingBox, :type => :model do

  before(:all) do
    @saving_box = create(:saving_box, :with_name)
  end

  it "is valid with valid attributes" do
    expect(@saving_box).to be_valid
  end

  it "is not valid without user" do
    exp = build(:regular_expense, :without_user)
    expect(exp).not_to be_valid
  end

  it "is not valid without name attribute" do
    exp = build(:regular_expense, :without_name)
    expect(exp).not_to be_valid
  end
end
