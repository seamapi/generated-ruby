# frozen_string_literal: true

module Seam
  module Clients
    class Health < BaseClient
      def service
        @service ||= Seam::Clients::HealthService.new(self)
      end

      def get_health
        request_seam(
          :post,
          "/health/get_health",
          body: {}.compact
        )

        nil
      end

      def get_service_health(service:)
        request_seam(
          :post,
          "/health/get_service_health",
          body: {service: service}.compact
        )

        nil
      end
    end
  end
end
