# frozen_string_literal: true

class OrderDiscount < ApplicationRecord
  attribute :order_number, :string
  attribute :price, :integer
end
