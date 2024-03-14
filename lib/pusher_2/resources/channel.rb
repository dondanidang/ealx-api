# frozen_string_literal: true

module Pusher2
  class Channel
    # Triggers an event in a specific channel.
    #
    # - channel: The String representing channel where the event will be triggered.
    # - event: The String representing the event being triggered.
    # - data: The hash containing the inforation to passed when event is triggered.
    #
    # true
    def self.trigger(channel, event, data = {})
      Pusher2::OriginalPusher.instance.trigger(channel, event, data)
    end
  end
end
