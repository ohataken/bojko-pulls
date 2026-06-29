# frozen_string_literal: true

require "singleton"

module BojkoPullsSessionCreate
  # POST /sessions
  class Handler
    include Singleton

    def handle(event:, context:)
      {statusCode: 302, headers: {"Location" => "https://example.com"}, body: ""}
    end
  end
end
