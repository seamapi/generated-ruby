# frozen_string_literal: true

module Seam
  module Clients
    class AcsCredentialProvisioningAutomations < BaseClient
      def launch(user_identity_id:, credential_manager_acs_system_id:, acs_credential_pool_id: nil, create_credential_manager_user: nil, credential_manager_acs_user_id: nil)
        request_seam(
          :post,
          "/acs/credential_provisioning_automations/launch",
          body: {user_identity_id: user_identity_id, credential_manager_acs_system_id: credential_manager_acs_system_id, acs_credential_pool_id: acs_credential_pool_id, create_credential_manager_user: create_credential_manager_user, credential_manager_acs_user_id: credential_manager_acs_user_id}.compact
        )

        nil
      end
    end
  end
end
