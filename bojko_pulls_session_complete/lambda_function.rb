# frozen_string_literal: true

require_relative "lib/bojko_pulls_session_complete"

def handler(event:, context:)
  {statusCode: 200, body: "ok"}
end
