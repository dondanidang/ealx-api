# frozen_string_literal: true

module Pusher2
  class Instance
    METHODS = %i[
      channel
    ].freeze

    def channel
      Channel
    end
  end
end
