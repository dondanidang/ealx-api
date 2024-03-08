# frozen_string_literal: true

module V1
  class QualityBasedPricesController < ApplicationController
    def show
      quality_based_price = QualityBasedPrice.findBy(quality: params[:quality])

      render status: :created, locals: { quality_based_price: quality_based_price }
    end
  end
end
