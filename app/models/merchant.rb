class Merchant < ApplicationRecord
  validates_presence_of :name

  has_many :invoices, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :invoice_items, through: :items
end
