# frozen_string_literal: true

module Seam
  class UserIdentity < BaseResource
    attr_accessor :user_identity_id, :user_identity_key, :email_address, :phone_number, :display_name, :full_name, :workspace_id

    date_accessor :created_at
  end
end
