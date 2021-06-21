class User
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :name, type: String
  field :username, type: String
  field :password, type: String

  has_many :planned_expenses
  has_many :regular_expenses
  has_many :saving_boxes
end
