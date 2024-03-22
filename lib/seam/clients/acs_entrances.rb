# frozen_string_literal: true

module Seam
  module Clients
    class AcsEntrances < BaseClient
      def get(acs_entrance_id:)
        request_seam(
          :post,
          "/acs/entrances/get",
          body: {acs_entrance_id: acs_entrance_id}.compact
        )

        nil
      end

      def grant_access(acs_entrance_id:, acs_user_id:)
        request_seam(
          :post,
          "/acs/entrances/grant_access",
          body: {acs_entrance_id: acs_entrance_id, acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def list(acs_system_id: nil, acs_credential_id: nil)
        request_seam(
          :post,
          "/acs/entrances/list",
          body: {acs_system_id: acs_system_id, acs_credential_id: acs_credential_id}.compact
        )

        nil
      end

      def list_credentials_with_access(acs_entrance_id:, include_if: nil)
        request_seam(
          :post,
          "/acs/entrances/list_credentials_with_access",
          body: {acs_entrance_id: acs_entrance_id, include_if: include_if}.compact
        )

        nil
      end
    end
  end
end
