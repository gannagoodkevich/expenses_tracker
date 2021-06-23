class SpentExpense
  include Mongoid::Document
  include Mongoid::Timestamps

  include Expense
end
