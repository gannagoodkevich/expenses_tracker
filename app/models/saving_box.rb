class SavingBox
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :purpose, type: String

  belongs_to :user

  validates :name, presence: true
end
