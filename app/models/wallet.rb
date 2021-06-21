class Wallet
  include Mongoid::Document
  include Mongoid::Timestamps

  field :due_date, type: Double
  field :currency, type: String
  field :active, type: Boolean

  belongs_to :user
end
