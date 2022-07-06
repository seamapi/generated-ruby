# frozen_string_literal: true

module Seam
  class Client
    attr_accessor :api_key, :base_uri

    def initialize(api_key, base_uri = "https://connect.getseam.com")
      @api_key = api_key
      @base_uri = base_uri
    end

    def locks
      @locks ||= Seam::Clients::Locks.new(self)
    end

    def devices
      @devices ||= Seam::Clients::Devices.new(self)
    end

    def action_attempts
      @action_attempts ||= Seam::Clients::ActionAttempts.new(self)
    end

    def access_codes
      @access_codes ||= Seam::Clients::AccessCodes.new(self)
    end
  end
end
