# frozen_string_literal: true

module Seam
  class AccessCode < BaseResource
    attr_accessor :common_code_key, :is_scheduled_on_device, :type, :is_waiting_for_code_assignment, :access_code_id, :device_id, :name, :code, :is_managed, :status, :is_backup_access_code_available, :is_backup, :pulled_backup_access_code_id, :is_external_modification_allowed, :is_one_time_use, :is_offline_access_code

    date_accessor :created_at, :starts_at, :ends_at

    include Seam::ResourceErrorsSupport
    include Seam::ResourceWarningsSupport
  end
end
