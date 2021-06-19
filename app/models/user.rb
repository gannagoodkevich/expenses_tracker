class User
  include Mongoid::Document

  field :name, type: String
  field :username, type: String
  field :password, type: String

  has_many :planned_expenses
  has_many :regular_expenses
  has_many :saving_boxes
end
