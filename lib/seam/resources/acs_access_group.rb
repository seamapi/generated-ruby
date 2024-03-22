# frozen_string_literal: true

module Seam
  class AcsAccessGroup < BaseResource
    attr_accessor :acs_access_group_id, :acs_system_id, :workspace_id, :name, :access_group_type, :access_group_type_display_name, :external_type, :external_type_display_name

    date_accessor :created_at
  end
end
