# frozen_string_literal: true

module Seam
  class AcsSystem < BaseResource
    attr_accessor :acs_system_id, :external_type, :external_type_display_name, :system_type, :system_type_display_name, :name, :workspace_id, :connected_account_ids, :image_url, :image_alt_text, :can_automate_enrollment

    date_accessor :created_at
  end
end
