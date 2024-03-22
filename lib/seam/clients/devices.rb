# frozen_string_literal: true

module Seam
  module Clients
    class Devices < BaseClient
      def simulate
        @simulate ||= Seam::Clients::DevicesSimulate.new(self)
      end

      def unmanaged
        @unmanaged ||= Seam::Clients::DevicesUnmanaged.new(self)
      end

      def delete(device_id:)
        request_seam(
          :post,
          "/devices/delete",
          body: {device_id: device_id}.compact
        )

        nil
      end

      def get(device_id: nil, name: nil)
        request_seam_object(
          :post,
          "/devices/get",
          Seam::Device,
          "device",
          body: {device_id: device_id, name: name}.compact
        )
      end

      def list(connected_account_id: nil, connected_account_ids: nil, connect_webview_id: nil, device_types: nil, manufacturer: nil, device_ids: nil, limit: nil, created_before: nil, user_identifier_key: nil, custom_metadata_has: nil)
        request_seam_object(
          :post,
          "/devices/list",
          Seam::Device,
          "devices",
          body: {connected_account_id: connected_account_id, connected_account_ids: connected_account_ids, connect_webview_id: connect_webview_id, device_types: device_types, manufacturer: manufacturer, device_ids: device_ids, limit: limit, created_before: created_before, user_identifier_key: user_identifier_key, custom_metadata_has: custom_metadata_has}.compact
        )
      end

      def list_device_providers(provider_category: nil)
        request_seam_object(
          :post,
          "/devices/list_device_providers",
          Seam::DeviceProvider,
          "device_providers",
          body: {provider_category: provider_category}.compact
        )
      end

      def update(device_id:, properties: nil, name: nil, is_managed: nil, custom_metadata: nil)
        request_seam(
          :post,
          "/devices/update",
          body: {device_id: device_id, properties: properties, name: name, is_managed: is_managed, custom_metadata: custom_metadata}.compact
        )

        nil
      end
    end
  end
end
