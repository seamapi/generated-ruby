# frozen_string_literal: true

module Seam
  module Clients
    class Networks < BaseClient
      def get(network_id:)
        request_seam(
          :post,
          "/networks/get",
          body: {network_id: network_id}.compact
        )

        nil
      end

      def list
        request_seam(
          :post,
          "/networks/list",
          body: {}.compact
        )

        nil
      end
    end
  end
end
