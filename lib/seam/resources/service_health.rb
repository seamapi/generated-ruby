# frozen_string_literal: true

module Seam
  class ServiceHealth < BaseResource
    attr_accessor :service, :status, :description
  end
end
