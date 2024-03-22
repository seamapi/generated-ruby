# frozen_string_literal: true

module Seam
  module Clients
    class ClientSessions < BaseClient
      def create(user_identifier_key: nil, connect_webview_ids: nil, connected_account_ids: nil, user_identity_ids: nil, expires_at: nil)
        request_seam_object(
          :post,
          "/client_sessions/create",
          Seam::ClientSession,
          "client_session",
          body: {user_identifier_key: user_identifier_key, connect_webview_ids: connect_webview_ids, connected_account_ids: connected_account_ids, user_identity_ids: user_identity_ids, expires_at: expires_at}.compact
        )
      end

      def delete(client_session_id:)
        request_seam(
          :post,
          "/client_sessions/delete",
          body: {client_session_id: client_session_id}.compact
        )

        nil
      end

      def get(client_session_id: nil, user_identifier_key: nil)
        request_seam_object(
          :post,
          "/client_sessions/get",
          Seam::ClientSession,
          "client_session",
          body: {client_session_id: client_session_id, user_identifier_key: user_identifier_key}.compact
        )
      end

      def get_or_create(user_identifier_key: nil, connect_webview_ids: nil, connected_account_ids: nil, user_identity_ids: nil, expires_at: nil)
        request_seam_object(
          :post,
          "/client_sessions/get_or_create",
          Seam::ClientSession,
          "client_session",
          body: {user_identifier_key: user_identifier_key, connect_webview_ids: connect_webview_ids, connected_account_ids: connected_account_ids, user_identity_ids: user_identity_ids, expires_at: expires_at}.compact
        )
      end

      def grant_access(client_session_id: nil, user_identifier_key: nil, connected_account_ids: nil, connect_webview_ids: nil, user_identity_ids: nil)
        request_seam(
          :post,
          "/client_sessions/grant_access",
          body: {client_session_id: client_session_id, user_identifier_key: user_identifier_key, connected_account_ids: connected_account_ids, connect_webview_ids: connect_webview_ids, user_identity_ids: user_identity_ids}.compact
        )

        nil
      end

      def list(client_session_id: nil, user_identifier_key: nil, connect_webview_id: nil, without_user_identifier_key: nil, user_identity_id: nil)
        request_seam_object(
          :post,
          "/client_sessions/list",
          Seam::ClientSession,
          "client_sessions",
          body: {client_session_id: client_session_id, user_identifier_key: user_identifier_key, connect_webview_id: connect_webview_id, without_user_identifier_key: without_user_identifier_key, user_identity_id: user_identity_id}.compact
        )
      end

      def revoke(client_session_id:)
        request_seam(
          :post,
          "/client_sessions/revoke",
          body: {client_session_id: client_session_id}.compact
        )

        nil
      end
    end
  end
end
