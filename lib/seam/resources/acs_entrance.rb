# frozen_string_literal: true

module Seam
  class AcsEntrance < BaseResource
    attr_accessor :acs_entrance_id, :display_name, :acs_system_id, :latch_metadata, :visionline_metadata

    date_accessor :created_at
  end
end
