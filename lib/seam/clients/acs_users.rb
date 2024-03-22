# frozen_string_literal: true

module Seam
  module Clients
    class AcsUsers < BaseClient
      def add_to_access_group(acs_user_id:, acs_access_group_id:)
        request_seam(
          :post,
          "/acs/users/add_to_access_group",
          body: {acs_user_id: acs_user_id, acs_access_group_id: acs_access_group_id}.compact
        )

        nil
      end

      def create(acs_system_id:, acs_access_group_ids: nil, user_identity_id: nil, access_schedule: nil, full_name: nil, email: nil, phone_number: nil, email_address: nil)
        request_seam(
          :post,
          "/acs/users/create",
          body: {acs_system_id: acs_system_id, acs_access_group_ids: acs_access_group_ids, user_identity_id: user_identity_id, access_schedule: access_schedule, full_name: full_name, email: email, phone_number: phone_number, email_address: email_address}.compact
        )

        nil
      end

      def delete(acs_user_id:)
        request_seam(
          :post,
          "/acs/users/delete",
          body: {acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def get(acs_user_id:)
        request_seam(
          :post,
          "/acs/users/get",
          body: {acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def list(user_identity_id: nil, user_identity_phone_number: nil, user_identity_email_address: nil, acs_system_id: nil)
        request_seam(
          :post,
          "/acs/users/list",
          body: {user_identity_id: user_identity_id, user_identity_phone_number: user_identity_phone_number, user_identity_email_address: user_identity_email_address, acs_system_id: acs_system_id}.compact
        )

        nil
      end

      def list_accessible_entrances(acs_user_id:)
        request_seam(
          :post,
          "/acs/users/list_accessible_entrances",
          body: {acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def remove_from_access_group(acs_user_id:, acs_access_group_id:)
        request_seam(
          :post,
          "/acs/users/remove_from_access_group",
          body: {acs_user_id: acs_user_id, acs_access_group_id: acs_access_group_id}.compact
        )

        nil
      end

      def revoke_access_to_all_entrances(acs_user_id:)
        request_seam(
          :post,
          "/acs/users/revoke_access_to_all_entrances",
          body: {acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def suspend(acs_user_id:)
        request_seam(
          :post,
          "/acs/users/suspend",
          body: {acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def unsuspend(acs_user_id:)
        request_seam(
          :post,
          "/acs/users/unsuspend",
          body: {acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def update(acs_user_id:, access_schedule: nil, full_name: nil, email: nil, phone_number: nil, email_address: nil, hid_acs_system_id: nil)
        request_seam(
          :post,
          "/acs/users/update",
          body: {acs_user_id: acs_user_id, access_schedule: access_schedule, full_name: full_name, email: email, phone_number: phone_number, email_address: email_address, hid_acs_system_id: hid_acs_system_id}.compact
        )

        nil
      end
    end
  end
end
