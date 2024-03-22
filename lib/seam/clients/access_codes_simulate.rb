# frozen_string_literal: true

module Seam
  module Clients
    class AccessCodesSimulate < BaseClient
      def create_unmanaged_access_code(device_id:, name:, code:)
        request_seam_object(
          :post,
          "/access_codes/simulate/create_unmanaged_access_code",
          Seam::UnmanagedAccessCode,
          "access_code",
          body: {device_id: device_id, name: name, code: code}.compact
        )
      end
    end
  end
end
