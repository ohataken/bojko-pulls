# frozen_string_literal: true

require "bundler/setup"
require_relative "lib/bojko_pulls_session_destroy"

def handler(event:, context:)
  { statusCode: 200, body: "ok" }
end
