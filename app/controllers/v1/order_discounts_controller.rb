# frozen_string_literal: true

module V1
  class OrderDiscountsController < ApplicationController
    def index
      order_discounts = OrderDiscount.all

      render status: :ok, locals: { order_discounts: order_discounts }
    end

    def create
      order_discount_params = params[:order_discount]

      order_discount = OrderDiscount.create!(
        order_number: order_discount_params[:order_number],
        price: order_discount_params[:price]
      )

      Pusher2.channel.trigger(
        'order-discount',
        'created',
        {
          id: order_discount.id,
          price: order_discount.price,
          order_number: order_discount.order_number,
          created_at: order_discount.created_at
        }
      )

      render status: :created, locals: { order_discount: order_discount }
    end
  end
end
