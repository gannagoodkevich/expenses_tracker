class SavingBox
  include Mongoid::Document
  include Mongoid::Timestamps

  include Expense

  field :title, type: String
  field :purpose, type: String

  belongs_to :user

  validates :name, presence: true
end
