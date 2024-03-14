# frozen_string_literal: true

json.quality_based_price do
  json.extract! quality_based_price, :quality, :price
end
