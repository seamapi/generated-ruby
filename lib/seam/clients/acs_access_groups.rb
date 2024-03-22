# frozen_string_literal: true

module Seam
  module Clients
    class AcsAccessGroups < BaseClient
      def add_user(acs_access_group_id:, acs_user_id:)
        request_seam(
          :post,
          "/acs/access_groups/add_user",
          body: {acs_access_group_id: acs_access_group_id, acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def get(acs_access_group_id:)
        request_seam(
          :post,
          "/acs/access_groups/get",
          body: {acs_access_group_id: acs_access_group_id}.compact
        )

        nil
      end

      def list(acs_system_id: nil, acs_user_id: nil)
        request_seam(
          :post,
          "/acs/access_groups/list",
          body: {acs_system_id: acs_system_id, acs_user_id: acs_user_id}.compact
        )

        nil
      end

      def list_users(acs_access_group_id:)
        request_seam(
          :post,
          "/acs/access_groups/list_users",
          body: {acs_access_group_id: acs_access_group_id}.compact
        )

        nil
      end

      def remove_user(acs_access_group_id:, acs_user_id:)
        request_seam(
          :post,
          "/acs/access_groups/remove_user",
          body: {acs_access_group_id: acs_access_group_id, acs_user_id: acs_user_id}.compact
        )

        nil
      end
    end
  end
end
