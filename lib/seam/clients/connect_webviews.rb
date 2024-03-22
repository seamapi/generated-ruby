# frozen_string_literal: true

module Seam
  module Clients
    class ConnectWebviews < BaseClient
      def create(device_selection_mode: nil, custom_redirect_url: nil, custom_redirect_failure_url: nil, accepted_providers: nil, provider_category: nil, custom_metadata: nil, automatically_manage_new_devices: nil, wait_for_device_creation: nil)
        request_seam_object(
          :post,
          "/connect_webviews/create",
          Seam::ConnectWebview,
          "connect_webview",
          body: {device_selection_mode: device_selection_mode, custom_redirect_url: custom_redirect_url, custom_redirect_failure_url: custom_redirect_failure_url, accepted_providers: accepted_providers, provider_category: provider_category, custom_metadata: custom_metadata, automatically_manage_new_devices: automatically_manage_new_devices, wait_for_device_creation: wait_for_device_creation}.compact
        )
      end

      def delete(connect_webview_id:)
        request_seam(
          :post,
          "/connect_webviews/delete",
          body: {connect_webview_id: connect_webview_id}.compact
        )

        nil
      end

      def get(connect_webview_id:)
        request_seam_object(
          :post,
          "/connect_webviews/get",
          Seam::ConnectWebview,
          "connect_webview",
          body: {connect_webview_id: connect_webview_id}.compact
        )
      end

      def list(user_identifier_key: nil, custom_metadata_has: nil)
        request_seam_object(
          :post,
          "/connect_webviews/list",
          Seam::ConnectWebview,
          "connect_webviews",
          body: {user_identifier_key: user_identifier_key, custom_metadata_has: custom_metadata_has}.compact
        )
      end
    end
  end
end
