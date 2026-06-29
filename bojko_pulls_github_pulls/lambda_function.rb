# frozen_string_literal: true

require_relative "lib/bojko_pulls_github_pulls"

def handler(event:, context:)
  BojkoPullsGithubPulls::Handler.instance.handle(event: event, context: context)
end
