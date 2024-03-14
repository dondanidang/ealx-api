# frozen_string_literal: true

module Pusher2
  class OriginalPusher
    def self.instance
      Pusher::Client.new(
        app_id: Pusher2.app_id,
        key: Pusher2.app_key,
        secret: Pusher2.app_secret,
        cluster: Pusher2.cluster,
        use_tls: Pusher2.encrypted
      )
    end
  end
end
