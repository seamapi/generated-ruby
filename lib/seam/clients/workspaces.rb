# frozen_string_literal: true

module Seam
  module Clients
    class Workspaces < BaseClient
      def create(connect_partner_name:, name:, is_sandbox: nil, webview_logo_shape: nil, webview_primary_button_color: nil)
        request_seam_object(
          :post,
          "/workspaces/create",
          Seam::Workspace,
          "workspace",
          body: {connect_partner_name: connect_partner_name, name: name, is_sandbox: is_sandbox, webview_logo_shape: webview_logo_shape, webview_primary_button_color: webview_primary_button_color}.compact
        )
      end

      def get
        request_seam_object(
          :post,
          "/workspaces/get",
          Seam::Workspace,
          "workspace",
          body: {}.compact
        )
      end

      def list
        request_seam_object(
          :post,
          "/workspaces/list",
          Seam::Workspace,
          "workspaces",
          body: {}.compact
        )
      end

      def reset_sandbox
        request_seam(
          :post,
          "/workspaces/reset_sandbox",
          body: {}.compact
        )

        nil
      end
    end
  end
end
