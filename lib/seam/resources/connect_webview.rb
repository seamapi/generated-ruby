# frozen_string_literal: true

module Seam
  class ConnectWebview < BaseResource
    attr_accessor :connect_webview_id, :workspace_id, :connected_account_id, :url, :device_selection_mode, :accepted_providers, :accepted_devices, :any_device_allowed, :any_provider_allowed, :login_successful, :status, :custom_redirect_url, :custom_redirect_failure_url, :custom_metadata, :automatically_manage_new_devices, :wait_for_device_creation, :selected_provider

    date_accessor :created_at, :authorized_at
  end
end
