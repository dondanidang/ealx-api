# frozen_string_literal: true

require 'pusher_2'

Pusher2.configure do |config|
  config.app_id = Rails.application.credentials.pusher.app_id
  config.app_key = Rails.application.credentials.pusher.app_key
  config.app_secret = Rails.application.credentials.pusher.app_secret
  config.cluster = Rails.application.credentials.pusher.cluster
  config.encrypted = Rails.application.credentials.pusher.encrypted
end
