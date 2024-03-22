# frozen_string_literal: true

module Seam
  module Clients
    class HealthService < BaseClient
      def by_service_name(service_name:)
        request_seam(
          :post,
          "/health/service/[service_name]",
          body: {service_name: service_name}.compact
        )

        nil
      end
    end
  end
end
