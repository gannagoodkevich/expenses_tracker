class SavingBox
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :name, type: String
  field :purpose, type: String

  belongs_to :user
end
