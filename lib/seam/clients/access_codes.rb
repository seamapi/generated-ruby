# frozen_string_literal: true

module Seam
  module Clients
    class AccessCodes < BaseClient
      def simulate
        @simulate ||= Seam::Clients::AccessCodesSimulate.new(self)
      end

      def unmanaged
        @unmanaged ||= Seam::Clients::AccessCodesUnmanaged.new(self)
      end

      def create(device_id:, name: nil, starts_at: nil, ends_at: nil, code: nil, sync: nil, attempt_for_offline_device: nil, common_code_key: nil, prefer_native_scheduling: nil, use_backup_access_code_pool: nil, allow_external_modification: nil, is_external_modification_allowed: nil, use_offline_access_code: nil, is_offline_access_code: nil, is_one_time_use: nil, max_time_rounding: nil)
        request_seam_object(
          :post,
          "/access_codes/create",
          Seam::AccessCode,
          "access_code",
          body: {device_id: device_id, name: name, starts_at: starts_at, ends_at: ends_at, code: code, sync: sync, attempt_for_offline_device: attempt_for_offline_device, common_code_key: common_code_key, prefer_native_scheduling: prefer_native_scheduling, use_backup_access_code_pool: use_backup_access_code_pool, allow_external_modification: allow_external_modification, is_external_modification_allowed: is_external_modification_allowed, use_offline_access_code: use_offline_access_code, is_offline_access_code: is_offline_access_code, is_one_time_use: is_one_time_use, max_time_rounding: max_time_rounding}.compact
        )
      end

      def create_multiple(device_ids:, behavior_when_code_cannot_be_shared: nil, preferred_code_length: nil, name: nil, starts_at: nil, ends_at: nil, code: nil, attempt_for_offline_device: nil, prefer_native_scheduling: nil, use_backup_access_code_pool: nil, allow_external_modification: nil, is_external_modification_allowed: nil, use_offline_access_code: nil, is_offline_access_code: nil, is_one_time_use: nil, max_time_rounding: nil)
        request_seam_object(
          :post,
          "/access_codes/create_multiple",
          Seam::AccessCode,
          "access_codes",
          body: {device_ids: device_ids, behavior_when_code_cannot_be_shared: behavior_when_code_cannot_be_shared, preferred_code_length: preferred_code_length, name: name, starts_at: starts_at, ends_at: ends_at, code: code, attempt_for_offline_device: attempt_for_offline_device, prefer_native_scheduling: prefer_native_scheduling, use_backup_access_code_pool: use_backup_access_code_pool, allow_external_modification: allow_external_modification, is_external_modification_allowed: is_external_modification_allowed, use_offline_access_code: use_offline_access_code, is_offline_access_code: is_offline_access_code, is_one_time_use: is_one_time_use, max_time_rounding: max_time_rounding}.compact
        )
      end

      def delete(access_code_id:, device_id: nil, sync: nil)
        request_seam_object(
          :post,
          "/access_codes/delete",
          Seam::ActionAttempt,
          "action_attempt",
          body: {access_code_id: access_code_id, device_id: device_id, sync: sync}.compact
        )

        nil
      end

      def generate_code(device_id:)
        request_seam_object(
          :post,
          "/access_codes/generate_code",
          Seam::AccessCode,
          "generated_code",
          body: {device_id: device_id}.compact
        )
      end

      def get(device_id: nil, access_code_id: nil, code: nil)
        request_seam_object(
          :post,
          "/access_codes/get",
          Seam::AccessCode,
          "access_code",
          body: {device_id: device_id, access_code_id: access_code_id, code: code}.compact
        )
      end

      def list(device_id: nil, access_code_ids: nil, user_identifier_key: nil)
        request_seam_object(
          :post,
          "/access_codes/list",
          Seam::AccessCode,
          "access_codes",
          body: {device_id: device_id, access_code_ids: access_code_ids, user_identifier_key: user_identifier_key}.compact
        )
      end

      def pull_backup_access_code(access_code_id:)
        request_seam_object(
          :post,
          "/access_codes/pull_backup_access_code",
          Seam::AccessCode,
          "backup_access_code",
          body: {access_code_id: access_code_id}.compact
        )
      end

      def update(access_code_id:, name: nil, starts_at: nil, ends_at: nil, code: nil, sync: nil, attempt_for_offline_device: nil, prefer_native_scheduling: nil, use_backup_access_code_pool: nil, allow_external_modification: nil, is_external_modification_allowed: nil, use_offline_access_code: nil, is_offline_access_code: nil, is_one_time_use: nil, max_time_rounding: nil, device_id: nil, type: nil, is_managed: nil)
        request_seam_object(
          :post,
          "/access_codes/update",
          Seam::ActionAttempt,
          "action_attempt",
          body: {access_code_id: access_code_id, name: name, starts_at: starts_at, ends_at: ends_at, code: code, sync: sync, attempt_for_offline_device: attempt_for_offline_device, prefer_native_scheduling: prefer_native_scheduling, use_backup_access_code_pool: use_backup_access_code_pool, allow_external_modification: allow_external_modification, is_external_modification_allowed: is_external_modification_allowed, use_offline_access_code: use_offline_access_code, is_offline_access_code: is_offline_access_code, is_one_time_use: is_one_time_use, max_time_rounding: max_time_rounding, device_id: device_id, type: type, is_managed: is_managed}.compact
        )

        nil
      end
    end
  end
end
