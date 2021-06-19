require "rails_helper"

RSpec.describe PlannedExpense, :type => :model do

  before(:all) do
    @planned_expense = create(:planned_expense, :in_the_future)
  end

  it "is valid with valid attributes" do
    expect(@planned_expense).to be_valid
  end
end