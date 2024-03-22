# frozen_string_literal: true

module Seam
  module Clients
    class DevicesUnmanaged < BaseClient
      def get(device_id: nil, name: nil)
        request_seam_object(
          :post,
          "/devices/unmanaged/get",
          Seam::UnmanagedDevice,
          "device",
          body: {device_id: device_id, name: name}.compact
        )
      end

      def list(connected_account_id: nil, connected_account_ids: nil, connect_webview_id: nil, device_types: nil, manufacturer: nil, device_ids: nil, limit: nil, created_before: nil, user_identifier_key: nil, custom_metadata_has: nil)
        request_seam_object(
          :post,
          "/devices/unmanaged/list",
          Seam::UnmanagedDevice,
          "devices",
          body: {connected_account_id: connected_account_id, connected_account_ids: connected_account_ids, connect_webview_id: connect_webview_id, device_types: device_types, manufacturer: manufacturer, device_ids: device_ids, limit: limit, created_before: created_before, user_identifier_key: user_identifier_key, custom_metadata_has: custom_metadata_has}.compact
        )
      end

      def update(device_id:, is_managed:)
        request_seam(
          :post,
          "/devices/unmanaged/update",
          body: {device_id: device_id, is_managed: is_managed}.compact
        )

        nil
      end
    end
  end
end
