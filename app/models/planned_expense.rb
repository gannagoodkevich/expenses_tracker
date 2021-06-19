class PlannedExpense
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :name, type: String
  field :description, type: String
  field :due_date, type: DateTime

  belongs_to :user
end
