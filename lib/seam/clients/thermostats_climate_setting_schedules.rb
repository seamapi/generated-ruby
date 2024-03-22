# frozen_string_literal: true

module Seam
  module Clients
    class ThermostatsClimateSettingSchedules < BaseClient
      def create(device_id:, schedule_starts_at:, schedule_ends_at:, schedule_type: nil, name: nil, automatic_heating_enabled: nil, automatic_cooling_enabled: nil, hvac_mode_setting: nil, cooling_set_point_celsius: nil, heating_set_point_celsius: nil, cooling_set_point_fahrenheit: nil, heating_set_point_fahrenheit: nil, manual_override_allowed: nil)
        request_seam_object(
          :post,
          "/thermostats/climate_setting_schedules/create",
          Seam::ClimateSettingSchedule,
          "climate_setting_schedule",
          body: {device_id: device_id, schedule_starts_at: schedule_starts_at, schedule_ends_at: schedule_ends_at, schedule_type: schedule_type, name: name, automatic_heating_enabled: automatic_heating_enabled, automatic_cooling_enabled: automatic_cooling_enabled, hvac_mode_setting: hvac_mode_setting, cooling_set_point_celsius: cooling_set_point_celsius, heating_set_point_celsius: heating_set_point_celsius, cooling_set_point_fahrenheit: cooling_set_point_fahrenheit, heating_set_point_fahrenheit: heating_set_point_fahrenheit, manual_override_allowed: manual_override_allowed}.compact
        )
      end

      def delete(climate_setting_schedule_id:)
        request_seam(
          :post,
          "/thermostats/climate_setting_schedules/delete",
          body: {climate_setting_schedule_id: climate_setting_schedule_id}.compact
        )

        nil
      end

      def get(climate_setting_schedule_id: nil, device_id: nil)
        request_seam_object(
          :post,
          "/thermostats/climate_setting_schedules/get",
          Seam::ClimateSettingSchedule,
          "climate_setting_schedule",
          body: {climate_setting_schedule_id: climate_setting_schedule_id, device_id: device_id}.compact
        )
      end

      def list(device_id:, user_identifier_key: nil)
        request_seam_object(
          :post,
          "/thermostats/climate_setting_schedules/list",
          Seam::ClimateSettingSchedule,
          "climate_setting_schedules",
          body: {device_id: device_id, user_identifier_key: user_identifier_key}.compact
        )
      end

      def update(climate_setting_schedule_id:, schedule_type: nil, name: nil, schedule_starts_at: nil, schedule_ends_at: nil, automatic_heating_enabled: nil, automatic_cooling_enabled: nil, hvac_mode_setting: nil, cooling_set_point_celsius: nil, heating_set_point_celsius: nil, cooling_set_point_fahrenheit: nil, heating_set_point_fahrenheit: nil, manual_override_allowed: nil)
        request_seam_object(
          :post,
          "/thermostats/climate_setting_schedules/update",
          Seam::ClimateSettingSchedule,
          "climate_setting_schedule",
          body: {climate_setting_schedule_id: climate_setting_schedule_id, schedule_type: schedule_type, name: name, schedule_starts_at: schedule_starts_at, schedule_ends_at: schedule_ends_at, automatic_heating_enabled: automatic_heating_enabled, automatic_cooling_enabled: automatic_cooling_enabled, hvac_mode_setting: hvac_mode_setting, cooling_set_point_celsius: cooling_set_point_celsius, heating_set_point_celsius: heating_set_point_celsius, cooling_set_point_fahrenheit: cooling_set_point_fahrenheit, heating_set_point_fahrenheit: heating_set_point_fahrenheit, manual_override_allowed: manual_override_allowed}.compact
        )

        nil
      end
    end
  end
end
