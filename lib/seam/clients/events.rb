# frozen_string_literal: true

module Seam
  module Clients
    class Events < BaseClient
      def get(event_id: nil, event_type: nil, device_id: nil)
        request_seam_object(
          :post,
          "/events/get",
          Seam::Event,
          "event",
          body: {event_id: event_id, event_type: event_type, device_id: device_id}.compact
        )
      end

      def list(since: nil, between: nil, device_id: nil, device_ids: nil, access_code_id: nil, access_code_ids: nil, event_type: nil, event_types: nil, connected_account_id: nil, limit: nil)
        request_seam_object(
          :post,
          "/events/list",
          Seam::Event,
          "events",
          body: {since: since, between: between, device_id: device_id, device_ids: device_ids, access_code_id: access_code_id, access_code_ids: access_code_ids, event_type: event_type, event_types: event_types, connected_account_id: connected_account_id, limit: limit}.compact
        )
      end
    end
  end
end
