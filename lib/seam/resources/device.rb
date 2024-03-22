# frozen_string_literal: true

module Seam
  class Device < BaseResource
    attr_accessor :device_id, :device_type, :nickname, :display_name, :capabilities_supported, :properties, :location, :connected_account_id, :workspace_id, :is_managed, :custom_metadata, :can_remotely_unlock, :can_remotely_lock, :can_program_online_access_codes, :can_simulate_removal

    date_accessor :created_at

    include Seam::ResourceErrorsSupport
    include Seam::ResourceWarningsSupport
  end
end
