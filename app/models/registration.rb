class Registration < ApplicationRecord
  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Not a valid email address" }
  validates :name, presence: true
  validates :attending, inclusion: { in: [true, false], message: "- Please select yes or no" }

  before_save do
    if attending?
      self.total_guests = 1 if total_guests.nil?
    else
      self.total_guests = 0
    end
  end
end
