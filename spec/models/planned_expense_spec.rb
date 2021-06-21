require "rails_helper"

RSpec.describe PlannedExpense, :type => :model do

  before(:all) do
    @planned_expense = create(:planned_expense, :in_the_future)
  end

  it "is valid with valid attributes" do
    expect(@planned_expense).to be_valid
  end

  it "is not valid with wrong due_date" do
    exp = build_stubbed(:planned_expense, :in_the_past)
    expect(exp).not_to be_valid
  end

  it "is not valid without user" do
    exp = build(:planned_expense, :without_user)
    expect(exp).not_to be_valid
  end

  it "is not valid without name attribute" do
    exp = build(:planned_expense, :without_name)
    expect(exp).not_to be_valid
  end

  it "is not valid without due_date attribute" do
    exp = build(:planned_expense, :without_name)
    expect(exp).not_to be_valid
  end
end
