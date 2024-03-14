# frozen_string_literal: true

module V1
  class QualityBasedPricesController < ApplicationController
    def search
      quality_based_price = QualityBasedPrice.find_by(quality: params[:quality])

      render status: :ok, locals: { quality_based_price: quality_based_price }
    end
  end
end
