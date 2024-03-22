# frozen_string_literal: true

module Seam
  module Clients
    class NoiseSensorsNoiseThresholds < BaseClient
      def create(device_id:, starts_daily_at:, ends_daily_at:, sync: nil, name: nil, noise_threshold_decibels: nil, noise_threshold_nrs: nil)
        request_seam_object(
          :post,
          "/noise_sensors/noise_thresholds/create",
          Seam::NoiseThreshold,
          "noise_threshold",
          body: {device_id: device_id, starts_daily_at: starts_daily_at, ends_daily_at: ends_daily_at, sync: sync, name: name, noise_threshold_decibels: noise_threshold_decibels, noise_threshold_nrs: noise_threshold_nrs}.compact
        )
      end

      def delete(noise_threshold_id:, device_id:, sync: nil)
        request_seam_object(
          :post,
          "/noise_sensors/noise_thresholds/delete",
          Seam::ActionAttempt,
          "action_attempt",
          body: {noise_threshold_id: noise_threshold_id, device_id: device_id, sync: sync}.compact
        )

        nil
      end

      def get(noise_threshold_id:)
        request_seam_object(
          :post,
          "/noise_sensors/noise_thresholds/get",
          Seam::NoiseThreshold,
          "noise_threshold",
          body: {noise_threshold_id: noise_threshold_id}.compact
        )
      end

      def list(device_id:, is_programmed: nil)
        request_seam_object(
          :post,
          "/noise_sensors/noise_thresholds/list",
          Seam::NoiseThreshold,
          "noise_thresholds",
          body: {device_id: device_id, is_programmed: is_programmed}.compact
        )
      end

      def update(noise_threshold_id:, device_id:, sync: nil, name: nil, starts_daily_at: nil, ends_daily_at: nil, noise_threshold_decibels: nil, noise_threshold_nrs: nil)
        request_seam_object(
          :post,
          "/noise_sensors/noise_thresholds/update",
          Seam::ActionAttempt,
          "action_attempt",
          body: {noise_threshold_id: noise_threshold_id, device_id: device_id, sync: sync, name: name, starts_daily_at: starts_daily_at, ends_daily_at: ends_daily_at, noise_threshold_decibels: noise_threshold_decibels, noise_threshold_nrs: noise_threshold_nrs}.compact
        )

        nil
      end
    end
  end
end
