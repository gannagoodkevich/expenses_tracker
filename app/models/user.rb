class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :username, type: String
  field :password, type: String

  has_many :planned_expenses
  has_many :regular_expenses
  has_many :spent_expenses
  has_and_belongs_to_many :saving_boxes
  has_one :wallet

  after_create :create_wallet

  protected

  def create_wallet
    Wallet.create!(user: self)
  end
end
