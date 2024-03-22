# frozen_string_literal: true

module Seam
  class ClientSession < BaseResource
    attr_accessor :client_session_id, :user_identifier_key, :token, :device_count, :connected_account_ids, :connect_webview_ids, :user_identity_ids, :workspace_id

    date_accessor :created_at
  end
end
