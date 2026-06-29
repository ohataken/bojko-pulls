# frozen_string_literal: true

require_relative "lib/bojko_pulls_session_create"

def handler(event:, context:)
  BojkoPullsSessionCreate::Handler.instance.handle(event: event, context: context)
end
