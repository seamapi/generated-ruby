# frozen_string_literal: true

module Seam
  class Webhook < BaseResource
    attr_accessor :webhook_id, :url, :event_types, :secret
  end
end
