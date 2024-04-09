# frozen_string_literal: true

module Seam
  class Event < BaseResource
    attr_accessor :device_id, :event_id, :event_type, :workspace_id

    date_accessor :created_at, :occurred_at
  end
end
