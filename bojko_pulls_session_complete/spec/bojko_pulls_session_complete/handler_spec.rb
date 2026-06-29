# frozen_string_literal: true

require "spec_helper"
require "bojko_pulls_session_complete"

describe BojkoPullsSessionComplete::Handler do
  describe "#handle" do
    it "returns a 302 redirect to https://example.com" do
      result = described_class.instance.handle(event: {}, context: {})

      expect(result).to eq({statusCode: 302, headers: {"Location" => "https://example.com"}, body: ""})
    end
  end
end
