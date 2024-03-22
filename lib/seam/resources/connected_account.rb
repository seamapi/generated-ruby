# frozen_string_literal: true

module Seam
  class ConnectedAccount < BaseResource
    attr_accessor :connected_account_id, :user_identifier, :account_type, :account_type_display_name, :custom_metadata, :automatically_manage_new_devices

    date_accessor :created_at

    include Seam::ResourceErrorsSupport
    include Seam::ResourceWarningsSupport
  end
end
