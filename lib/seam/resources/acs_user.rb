# frozen_string_literal: true

module Seam
  class AcsUser < BaseResource
    attr_accessor :acs_user_id, :acs_system_id, :hid_acs_system_id, :workspace_id, :display_name, :external_type, :external_type_display_name, :is_suspended, :access_schedule, :user_identity_id, :user_identity_full_name, :user_identity_email_address, :user_identity_phone_number, :full_name, :email, :email_address, :phone_number

    date_accessor :created_at
  end
end
