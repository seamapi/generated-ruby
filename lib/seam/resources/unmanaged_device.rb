# frozen_string_literal: true

module Seam
  class UnmanagedDevice < BaseResource
    attr_accessor :device_id, :device_type, :connected_account_id, :capabilities_supported, :workspace_id, :is_managed, :properties, :can_remotely_unlock, :can_remotely_lock, :can_program_online_access_codes, :can_simulate_removal

    date_accessor :created_at

    include Seam::ResourceErrorsSupport
    include Seam::ResourceWarningsSupport
  end
end
