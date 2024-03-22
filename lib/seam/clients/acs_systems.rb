# frozen_string_literal: true

module Seam
  module Clients
    class AcsSystems < BaseClient
      def get(acs_system_id:)
        request_seam(
          :post,
          "/acs/systems/get",
          body: {acs_system_id: acs_system_id}.compact
        )

        nil
      end

      def list(connected_account_id: nil)
        request_seam(
          :post,
          "/acs/systems/list",
          body: {connected_account_id: connected_account_id}.compact
        )

        nil
      end
    end
  end
end
