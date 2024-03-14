# frozen_string_literal: true

module Pusher2
  module Errors
    class Base < StandardError; end

    class ApiError < Base
      attr_reader :status, :body

      def initialize(status:, body:)
        @status = status
        @body = body

        super(body.to_s)
      end
    end
  end
end
