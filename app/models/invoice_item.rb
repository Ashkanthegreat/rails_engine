class InvoiceItem < ApplicationRecord
  validates_presence_of :quantity, :unit_price

  has_many :items
  has_many :invoices
end
