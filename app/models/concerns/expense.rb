module Expense
  extend ActiveSupport::Concern

  included do |base|
    field :amount, type: Float
    field :currency, type: Hash, default: { 'USD': false, 'EUR': true }
    field :tags, type: Array
    field :title, type: String
    field :description, type: String

    validates :title, presence: true

    belongs_to :user
  end
end