class Employee < ApplicationRecord
  belongs_to :company

  validates :fullname, :phone_number, :email, presence: true
end
