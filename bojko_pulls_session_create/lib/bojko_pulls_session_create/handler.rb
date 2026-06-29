# frozen_string_literal: true

require "singleton"

module BojkoPullsSessionCreate
  # POST /sessions
  class Handler
    include Singleton

    def handle(event:, context:)
      {statusCode: 200, body: "ok"}
    end
  end
end
