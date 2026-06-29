# frozen_string_literal: true

require "singleton"

module BojkoPullsSessionDestroy
  # DELETE /sessions
  class Handler
    include Singleton

    def handle(event:, context:)
      {statusCode: 200, body: "ok"}
    end
  end
end
