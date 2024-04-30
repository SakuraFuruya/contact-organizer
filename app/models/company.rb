class Company < ApplicationRecord
  has_many :employees

  validates :company_name, :industry, :address, presence: true

end
