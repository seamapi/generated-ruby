# frozen_string_literal: true

module Seam
  module Clients
    class AcsCredentialPools < BaseClient
      def list(acs_system_id:)
        request_seam(
          :post,
          "/acs/credential_pools/list",
          body: {acs_system_id: acs_system_id}.compact
        )

        nil
      end
    end
  end
end
