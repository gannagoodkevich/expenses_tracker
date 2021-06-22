class Wallet
  include Mongoid::Document
  include Mongoid::Timestamps

  field :amount, type: Float
  field :currency, type: Hash, default: { 'USD': false, 'EUR': true}
  field :active, type: Boolean, default: true

  belongs_to :user
end
