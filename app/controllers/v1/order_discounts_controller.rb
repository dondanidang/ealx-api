# frozen_string_literal: true

module V1
  class OrderDiscountsController < ApplicationController
    def create
      order_discount_params = params[:order_discount]

      order_discount = OrderDiscount.create!(
        order_id: order_discount_params[:order_id],
        price: order_discount_params[:price]
      )

      pusher = Pusher::Client.new(
        app_id: "1767517",
        key: "a4fcad3ed2671add4b09",
        secret: "9e615147abb07d914487",
        cluster: "eu"
      )

      pusher.trigger('order-discount', 'created', {order_id: order_discount.order_id, price: price})

      render status: :created, locals: { order_discount: order_discount }
    end
  end
end
