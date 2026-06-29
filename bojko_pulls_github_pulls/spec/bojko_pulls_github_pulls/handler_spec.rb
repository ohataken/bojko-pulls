# frozen_string_literal: true

require "spec_helper"
require "bojko_pulls_github_pulls"

describe BojkoPullsGithubPulls::Handler do
  describe "#handle" do
    it "returns statusCode 200" do
      result = described_class.instance.handle(event: {}, context: {})

      expect(result).to eq({statusCode: 200, body: "ok"})
    end
  end
end
