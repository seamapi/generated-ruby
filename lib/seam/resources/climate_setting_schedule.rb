# frozen_string_literal: true

module Seam
  class ClimateSettingSchedule < BaseResource
    attr_accessor :climate_setting_schedule_id, :schedule_type, :device_id, :name, :schedule_starts_at, :schedule_ends_at, :automatic_heating_enabled, :automatic_cooling_enabled, :hvac_mode_setting, :cooling_set_point_celsius, :heating_set_point_celsius, :cooling_set_point_fahrenheit, :heating_set_point_fahrenheit, :manual_override_allowed

    date_accessor :created_at

    include Seam::ResourceErrorsSupport
  end
end
