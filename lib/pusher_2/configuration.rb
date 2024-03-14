# frozen_string_literal: true

module Pusher2
  class Configuration
    PARAMETERS = %i[
      app_id
      app_key
      app_secret
      cluster
      encrypted
    ].freeze

    attr_accessor(*PARAMETERS)
  end
end
