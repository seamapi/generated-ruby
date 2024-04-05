# frozen_string_literal: true

module Seam
  module Clients
    class Locks < BaseClient
      def get(device_id: nil, name: nil)
        request_seam_object(
          :post,
          "/locks/get",
          Seam::Device,
          "device",
          body: {device_id: device_id, name: name}.compact
        )
      end

      def list(connected_account_id: nil, connected_account_ids: nil, connect_webview_id: nil, device_types: nil, manufacturer: nil, device_ids: nil, limit: nil, created_before: nil, user_identifier_key: nil, custom_metadata_has: nil, include_if: nil, exclude_if: nil)
        request_seam_object(
          :post,
          "/locks/list",
          Seam::Device,
          "devices",
          body: {connected_account_id: connected_account_id, connected_account_ids: connected_account_ids, connect_webview_id: connect_webview_id, device_types: device_types, manufacturer: manufacturer, device_ids: device_ids, limit: limit, created_before: created_before, user_identifier_key: user_identifier_key, custom_metadata_has: custom_metadata_has, include_if: include_if, exclude_if: exclude_if}.compact
        )
      end

      def lock_door(device_id:, sync: nil, wait_for_action_attempt: nil)
        action_attempt = request_seam_object(
          :post,
          "/locks/lock_door",
          Seam::ActionAttempt,
          "action_attempt",
          body: {device_id: device_id, sync: sync}.compact
        )

        action_attempt.decide_and_wait(wait_for_action_attempt)
        action_attempt
      end

      def unlock_door(device_id:, sync: nil, wait_for_action_attempt: nil)
        action_attempt = request_seam_object(
          :post,
          "/locks/unlock_door",
          Seam::ActionAttempt,
          "action_attempt",
          body: {device_id: device_id, sync: sync}.compact
        )

        action_attempt.decide_and_wait(wait_for_action_attempt)
        action_attempt
      end
    end
  end
end
