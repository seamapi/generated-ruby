# frozen_string_literal: true

module Seam
  module Clients
    class Thermostats < BaseClient
      def climate_setting_schedules
        @climate_setting_schedules ||= Seam::Clients::ThermostatsClimateSettingSchedules.new(self)
      end

      def cool(device_id:, cooling_set_point_celsius: nil, cooling_set_point_fahrenheit: nil, sync: nil, wait_for_action_attempt: nil)
        action_attempt = request_seam_object(
          :post,
          "/thermostats/cool",
          Seam::ActionAttempt,
          "action_attempt",
          body: {device_id: device_id, cooling_set_point_celsius: cooling_set_point_celsius, cooling_set_point_fahrenheit: cooling_set_point_fahrenheit, sync: sync}.compact
        )

        action_attempt.decide_and_wait(wait_for_action_attempt)
        action_attempt
      end

      def get(device_id: nil, name: nil)
        request_seam_object(
          :post,
          "/thermostats/get",
          Seam::Device,
          "thermostat",
          body: {device_id: device_id, name: name}.compact
        )
      end

      def heat(device_id:, heating_set_point_celsius: nil, heating_set_point_fahrenheit: nil, sync: nil, wait_for_action_attempt: nil)
        action_attempt = request_seam_object(
          :post,
          "/thermostats/heat",
          Seam::ActionAttempt,
          "action_attempt",
          body: {device_id: device_id, heating_set_point_celsius: heating_set_point_celsius, heating_set_point_fahrenheit: heating_set_point_fahrenheit, sync: sync}.compact
        )

        action_attempt.decide_and_wait(wait_for_action_attempt)
        action_attempt
      end

      def heat_cool(device_id:, heating_set_point_celsius: nil, heating_set_point_fahrenheit: nil, cooling_set_point_celsius: nil, cooling_set_point_fahrenheit: nil, sync: nil, wait_for_action_attempt: nil)
        action_attempt = request_seam_object(
          :post,
          "/thermostats/heat_cool",
          Seam::ActionAttempt,
          "action_attempt",
          body: {device_id: device_id, heating_set_point_celsius: heating_set_point_celsius, heating_set_point_fahrenheit: heating_set_point_fahrenheit, cooling_set_point_celsius: cooling_set_point_celsius, cooling_set_point_fahrenheit: cooling_set_point_fahrenheit, sync: sync}.compact
        )

        action_attempt.decide_and_wait(wait_for_action_attempt)
        action_attempt
      end

      def list(connected_account_id: nil, connected_account_ids: nil, connect_webview_id: nil, device_types: nil, manufacturer: nil, device_ids: nil, limit: nil, created_before: nil, user_identifier_key: nil, custom_metadata_has: nil, include_if: nil, exclude_if: nil)
        request_seam_object(
          :post,
          "/thermostats/list",
          Seam::Device,
          "thermostats",
          body: {connected_account_id: connected_account_id, connected_account_ids: connected_account_ids, connect_webview_id: connect_webview_id, device_types: device_types, manufacturer: manufacturer, device_ids: device_ids, limit: limit, created_before: created_before, user_identifier_key: user_identifier_key, custom_metadata_has: custom_metadata_has, include_if: include_if, exclude_if: exclude_if}.compact
        )
      end

      def off(device_id:, sync: nil, wait_for_action_attempt: nil)
        action_attempt = request_seam_object(
          :post,
          "/thermostats/off",
          Seam::ActionAttempt,
          "action_attempt",
          body: {device_id: device_id, sync: sync}.compact
        )

        action_attempt.decide_and_wait(wait_for_action_attempt)
        action_attempt
      end

      def set_fan_mode(device_id:, fan_mode: nil, fan_mode_setting: nil, sync: nil, wait_for_action_attempt: nil)
        action_attempt = request_seam_object(
          :post,
          "/thermostats/set_fan_mode",
          Seam::ActionAttempt,
          "action_attempt",
          body: {device_id: device_id, fan_mode: fan_mode, fan_mode_setting: fan_mode_setting, sync: sync}.compact
        )

        action_attempt.decide_and_wait(wait_for_action_attempt)
        action_attempt
      end

      def update(device_id:, default_climate_setting:)
        request_seam(
          :post,
          "/thermostats/update",
          body: {device_id: device_id, default_climate_setting: default_climate_setting}.compact
        )

        nil
      end
    end
  end
end
