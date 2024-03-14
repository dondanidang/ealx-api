# frozen_string_literal: true

# Top level classes
require_relative 'pusher_2/configuration'
require_relative 'pusher_2/errors'
require_relative 'pusher_2/instance'
require_relative 'pusher_2/original_pusher'

# Resources
require_relative 'pusher_2/resources/channel'

module Pusher2
  class << self
    extend Forwardable

    def_delegators :configuration, *Pusher2::Configuration::PARAMETERS
    def_delegators :instance, *Pusher2::Instance::METHODS

    def configure
      yield configuration
    end

    private

    def configuration
      @configuration ||= Pusher2::Configuration.new
    end

    def instance
      @instance ||= Pusher2::Instance.new
    end
  end
end
