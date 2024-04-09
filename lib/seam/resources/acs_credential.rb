# frozen_string_literal: true

module Seam
  class AcsCredential < BaseResource
    attr_accessor :acs_credential_id, :acs_user_id, :acs_credential_pool_id, :acs_system_id, :parent_acs_credential_id, :display_name, :code, :access_method, :external_type, :external_type_display_name, :workspace_id, :starts_at, :ends_at, :is_multi_phone_sync_credential, :visionline_metadata

    date_accessor :created_at

    include Seam::ResourceErrorsSupport
    include Seam::ResourceWarningsSupport
  end
end
