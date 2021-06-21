class PlannedExpense
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :name, type: String
  field :description, type: String
  field :due_date, type: DateTime

  belongs_to :user

  validates :name, presence: true
  validates :due_date, presence: true
  validate :date_check

  def date_check
    return true if due_date.present? && due_date >= Date.today

    errors.add(:due_date_error, "Due date can't be in the past")
    false
  end
end
