# frozen_string_literal: true

module Seam
  class AcsSystem < BaseResource
    attr_accessor :acs_system_id, :can_automate_enrollment, :connected_account_ids, :external_type, :external_type_display_name, :image_alt_text, :image_url, :name, :system_type, :system_type_display_name, :workspace_id

    date_accessor :created_at
  end
end
