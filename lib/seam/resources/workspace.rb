# frozen_string_literal: true

module Seam
  class Workspace < BaseResource
    attr_accessor :workspace_id, :name, :is_sandbox, :connect_partner_name
  end
end
