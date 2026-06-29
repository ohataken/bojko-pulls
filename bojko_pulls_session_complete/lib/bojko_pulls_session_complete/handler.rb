# frozen_string_literal: true

require "singleton"

module BojkoPullsSessionComplete
  # GET /sessions/complete
  class Handler
    include Singleton

    def handle(event:, context:)
      {statusCode: 302, headers: {"Location" => "https://example.com", "Set-Cookie" => "session=dummy; Path=/"}, body: ""}
    end
  end
end
