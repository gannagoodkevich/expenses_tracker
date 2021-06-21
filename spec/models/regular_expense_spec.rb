require "rails_helper"

RSpec.describe RegularExpense, :type => :model do

  before(:all) do
    @regular_expense = create(:regular_expense, :in_the_future)
  end

  it "is valid with valid attributes" do
    expect(@regular_expense).to be_valid
  end

  it "is not valid with wrong due_date" do
    exp = build_stubbed(:regular_expense, :in_the_past)
    expect(exp).not_to be_valid
  end

  it "is not valid without user" do
    exp = build(:regular_expense, :without_user)
    expect(exp).not_to be_valid
  end

  it "is not valid without name attribute" do
    exp = build(:regular_expense, :without_name)
    expect(exp).not_to be_valid
  end

  it "is not valid without due_date attribute" do
    exp = build(:regular_expense, :without_date)
    expect(exp).not_to be_valid
  end
end
