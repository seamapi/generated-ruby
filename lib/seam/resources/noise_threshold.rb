# frozen_string_literal: true

module Seam
  class NoiseThreshold < BaseResource
    attr_accessor :noise_threshold_id, :device_id, :name, :noise_threshold_nrs, :starts_daily_at, :ends_daily_at, :noise_threshold_decibels
  end
end
