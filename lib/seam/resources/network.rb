# frozen_string_literal: true

module Seam
  class Network < BaseResource
    attr_accessor :network_id, :workspace_id, :display_name

    date_accessor :created_at
  end
end
