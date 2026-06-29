# frozen_string_literal: true

require_relative "lib/bojko_pulls_session_destroy"

def handler(event:, context:)
  BojkoPullsSessionDestroy::Handler.instance.handle(event: event, context: context)
end
