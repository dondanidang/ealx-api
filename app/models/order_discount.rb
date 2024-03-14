# frozen_string_literal: true

class OrderDiscount < ApplicationRecord
  attribute :order_number, :string
  attribute :price, :decimal

  validates :order_number, :price, presence: true
end
