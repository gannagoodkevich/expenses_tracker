class RegularExpense
  include Mongoid::Document
  include Mongoid::Timestamps

  include Expense

  field :title, type: String
  field :description, type: String
  field :notification_date, type: DateTime

  validates :name, presence: true
  validates :notification_date, presence: true
  validate :date_check

  def date_check
    return true if notification_date.present? && notification_date >= Date.today

    errors.add(:due_date_error, "Notification date can't be in the past")
    false
  end
end
