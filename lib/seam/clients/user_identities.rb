# frozen_string_literal: true

module Seam
  module Clients
    class UserIdentities < BaseClient
      def enrollment_automations
        @enrollment_automations ||= Seam::Clients::UserIdentitiesEnrollmentAutomations.new(self)
      end

      def add_acs_user(user_identity_id:, acs_user_id:)
        request_seam(
          :post,
          "/user_identities/add_acs_user",
          body: {user_identity_id: user_identity_id, acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def create(user_identity_key: nil, email_address: nil, phone_number: nil, full_name: nil)
        request_seam(
          :post,
          "/user_identities/create",
          body: {user_identity_key: user_identity_key, email_address: email_address, phone_number: phone_number, full_name: full_name}.compact
        )

        nil
      end

      def delete(user_identity_id:)
        request_seam(
          :post,
          "/user_identities/delete",
          body: {user_identity_id: user_identity_id}.compact
        )

        nil
      end

      def get(user_identity_id: nil, user_identity_key: nil)
        request_seam(
          :post,
          "/user_identities/get",
          body: {user_identity_id: user_identity_id, user_identity_key: user_identity_key}.compact
        )

        nil
      end

      def grant_access_to_device(user_identity_id:, device_id:)
        request_seam(
          :post,
          "/user_identities/grant_access_to_device",
          body: {user_identity_id: user_identity_id, device_id: device_id}.compact
        )

        nil
      end

      def list(credential_manager_acs_system_id: nil)
        request_seam(
          :post,
          "/user_identities/list",
          body: {credential_manager_acs_system_id: credential_manager_acs_system_id}.compact
        )

        nil
      end

      def list_accessible_devices(user_identity_id:)
        request_seam(
          :post,
          "/user_identities/list_accessible_devices",
          body: {user_identity_id: user_identity_id}.compact
        )

        nil
      end

      def list_acs_systems(user_identity_id:)
        request_seam(
          :post,
          "/user_identities/list_acs_systems",
          body: {user_identity_id: user_identity_id}.compact
        )

        nil
      end

      def list_acs_users(user_identity_id:)
        request_seam(
          :post,
          "/user_identities/list_acs_users",
          body: {user_identity_id: user_identity_id}.compact
        )

        nil
      end

      def remove_acs_user(user_identity_id:, acs_user_id:)
        request_seam(
          :post,
          "/user_identities/remove_acs_user",
          body: {user_identity_id: user_identity_id, acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def revoke_access_to_device(user_identity_id:, device_id:)
        request_seam(
          :post,
          "/user_identities/revoke_access_to_device",
          body: {user_identity_id: user_identity_id, device_id: device_id}.compact
        )

        nil
      end

      def update(user_identity_id:, user_identity_key: nil, email_address: nil, phone_number: nil, full_name: nil)
        request_seam(
          :post,
          "/user_identities/update",
          body: {user_identity_id: user_identity_id, user_identity_key: user_identity_key, email_address: email_address, phone_number: phone_number, full_name: full_name}.compact
        )

        nil
      end
    end
  end
end
